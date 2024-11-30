//
//  GraphEntity_V28.swift
//  StitchSchemaKit
//
//  Created by Elliot Boschwitz on 10/2/24.
//

import Foundation

public enum GraphEntity_V28: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V28
    public typealias PreviousInstance = GraphEntity_V27.GraphEntity
    public typealias NodeEntity = NodeEntity_V28.NodeEntity
    public typealias SidebarLayerData = SidebarLayerData_V28.SidebarLayerData
    public typealias CommentBoxData = CommentBoxData_V28.CommentBoxData
    // MARK: - end

    public struct GraphEntity: Hashable, Sendable {
        public var id: UUID
        public var name: String
        public var nodes: [NodeEntity]
        public var orderedSidebarLayers: [SidebarLayerData]
        public let commentBoxes: [CommentBoxData]
        
        public init(id: UUID,
                    name: String,
                    nodes: [NodeEntity],
                    orderedSidebarLayers: [SidebarLayerData],
                    commentBoxes: [CommentBoxData]) {
            self.id = id
            self.name = name
            self.nodes = nodes
            self.orderedSidebarLayers = orderedSidebarLayers
            self.commentBoxes = commentBoxes
        }
    }
}

// TODO: remove after version 28
extension Array where Element == SidebarLayerData_V27.SidebarLayerData {
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

extension GraphEntity_V28.GraphEntity: StitchVersionedCodable {
    public init(previousInstance: GraphEntity_V28.PreviousInstance) {
        // TODO: remove reality view migration after version 28
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
        
        self = .init(id: previousInstance.id,
                     name: previousInstance.name,
                     nodes: .init(previousElements: previousInstance.nodes),
                     orderedSidebarLayers: .init(previousElements: convertedSidebarLayers),
                     commentBoxes: .init(previousElements: previousInstance.commentBoxes))
    }
}
