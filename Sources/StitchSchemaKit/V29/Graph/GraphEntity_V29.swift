//
//  GraphEntity_V29.swift
//  StitchSchemaKit
//
//  Created by Elliot Boschwitz on 10/2/24.
//

import Foundation

public enum GraphEntity_V29: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V29
    public typealias PreviousInstance = GraphEntity_V28.GraphEntity
    public typealias NodeEntity = NodeEntity_V29.NodeEntity
    public typealias SidebarLayerData = SidebarLayerData_V29.SidebarLayerData
    public typealias CommentBoxData = CommentBoxData_V29.CommentBoxData
    // MARK: - end

    public struct GraphEntity: Hashable, Sendable {
        public var id: UUID
        public var name: String
        public var migrationWarning: String?
        public var nodes: [NodeEntity]
        public var orderedSidebarLayers: [SidebarLayerData]
        public let commentBoxes: [CommentBoxData]
        
        public init(id: UUID,
                    name: String,
                    migrationWarning: String? = nil,
                    nodes: [NodeEntity],
                    orderedSidebarLayers: [SidebarLayerData],
                    commentBoxes: [CommentBoxData]) {
            self.id = id
            self.name = name
            self.migrationWarning = migrationWarning
            self.nodes = nodes
            self.orderedSidebarLayers = orderedSidebarLayers
            self.commentBoxes = commentBoxes
        }
    }
}

// TODO: remove after version 29
extension Array where Element == SidebarLayerData_V28.SidebarLayerData {
    func convertRealityLayers(realityIds: Set<UUID>) -> Self {
        self.map { sidebarData in
            var sidebarData = sidebarData
            
            if realityIds.contains(sidebarData.id) {
                sidebarData.children = []
                return sidebarData
            }
            
            // recursively check children
            sidebarData.children = sidebarData.children?.convertRealityLayers(realityIds: realityIds)
            return sidebarData
        }
    }
}

extension GraphEntity_V29.GraphEntity: StitchVersionedCodable {
    public init(previousInstance: GraphEntity_V29.PreviousInstance) {
        
        // TODO: remove reality view migration after version 29
        
        let realityViewIds: Set<UUID> = previousInstance.nodes.reduce(into: .init()) { result, node in
            switch node.nodeTypeEntity {
            case .layer(let layerNode):
                if layerNode.layer == .realityView {
                    result.insert(node.id)
                }
            default:
                return
            }
        }
        
        let convertedSidebarLayers = previousInstance.orderedSidebarLayers
            .convertRealityLayers(realityIds: realityViewIds)
        
        let oldModel3DPatchIds = Set(
            previousInstance.nodes
                .compactMap {
                    if $0.nodeTypeEntity.kind == .patch(.model3DImport) {
                        return $0.id
                    }
                    
                    return nil
                }
        )
        
        // Nothing to do if no 3D import patch nodes were used
        guard !oldModel3DPatchIds.isEmpty else {
            self = .init(id: previousInstance.id,
                         name: previousInstance.name,
                         migrationWarning: nil,
                         nodes: .init(previousElements: previousInstance.nodes),
                         orderedSidebarLayers: .init(previousElements: convertedSidebarLayers),
                         commentBoxes: .init(previousElements: previousInstance.commentBoxes))
            
            return
        }
        
        let oldNodes = previousInstance.nodes
        
        // Removes 3D model patch node and create 3D model layer node
        let convertedNodes: [GraphEntity_V29.NodeEntity] = oldNodes.compactMap { prevNode in
            switch prevNode.nodeTypeEntity {
                // Convertes old 3D model patch node to layer node
            case .patch(let patchNode) where patchNode.patch == .model3DImport:
                return nil

                // Searches all input data to find connections to old nodes and removes them.
            default:
                var migratedNode = GraphEntity_V29.NodeEntity(previousInstance: prevNode)
                migratedNode.nodeTypeEntity = migratedNode.nodeTypeEntity.inputsModifier() { input in
                    var input = input
                    
                    // Removes connections from model 3D import patch node
                    input.resetUpstreamConnection(with: .asyncMedia(nil)) { upstreamConnection in
                        oldModel3DPatchIds.contains(upstreamConnection.nodeId)
                    }
                    
                    return input
                }
                
                
                return migratedNode
                
                // TODO: remove connections
            }
        }

        self = .init(id: previousInstance.id,
                     name: previousInstance.name,
                     migrationWarning: "3D Model patch nodes have been deprecated in favor of 3D Model layers. While this document has been migrated, some data might have been lost. Please review your newly-created 3D Model Layer nodes.",
                     nodes: convertedNodes,
                     orderedSidebarLayers: .init(previousElements: convertedSidebarLayers),
                     commentBoxes: .init(previousElements: previousInstance.commentBoxes))
    }
}
