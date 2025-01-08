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
        
        let oldAnchorPatchIds = Set(
            previousInstance.nodes
                .compactMap {
                    if $0.nodeTypeEntity.kind == .patch(.arAnchor) {
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
        let convertedNodes: [GraphEntity_V28.NodeEntity] = oldNodes.map { prevNode in
            var prevNode = prevNode
            
            switch prevNode.nodeTypeEntity {
            case .patch(var patchNode) where patchNode.patch == .model3DImport:
                // Converts old 3D model patch node to value node
                patchNode.patch = .splitter
                patchNode.userVisibleType = .media
                patchNode.inputs = [patchNode.inputs[0]]
                prevNode.nodeTypeEntity = .patch(patchNode)
                
            case .patch(var patchNode) where patchNode.patch == .arAnchor:
                // New AR anchor removed first input
                patchNode.inputs = [patchNode.inputs[1]]
                prevNode.nodeTypeEntity = .patch(patchNode)
                
            default:
                // Remove connections to now removed first input of ar anchor
                prevNode.nodeTypeEntity = prevNode.nodeTypeEntity.inputsModifier { input in
                    switch input {
                    case .upstreamConnection(let nodeIOCoordinate) where oldAnchorPatchIds.contains(nodeIOCoordinate.nodeId):
                        return .values([.asyncMedia(nil)])
                        
                    default:
                        return input
                    }
                }
                
                break
            }
            
            return prevNode
        }

        self = .init(id: previousInstance.id,
                     name: previousInstance.name,
                     migrationWarning: "3D models and AR anchors have been modified in a recent update. Your document has been migrated to be compatible with these changes. Please review your 3D model layers and AR anchor patch nodes.",
                     nodes: .init(previousElements: convertedNodes),
                     orderedSidebarLayers: .init(previousElements: convertedSidebarLayers),
                     commentBoxes: .init(previousElements: previousInstance.commentBoxes))
    }
}
