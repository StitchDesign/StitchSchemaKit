//
//  NodeTypeEntity.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/19/23.
//

import Foundation
import SwiftUI

public enum NodeEntity_V22: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V21
    public typealias PreviousInstance = NodeEntity_V21.NodeEntity
    public typealias NodeTypeEntity = NodeTypeEntity_V22.NodeTypeEntity
    // MARK: - end

    public struct NodeEntity: Equatable, Identifiable {
        public let id: UUID
        public var nodeTypeEntity: NodeTypeEntity
        public let title: String
        
        public init(id: UUID,
                    nodeTypeEntity: NodeTypeEntity,
                    title: String) {
            self.id = id
            self.nodeTypeEntity = nodeTypeEntity
            self.title = title
        }
    }
}

extension NodeEntity_V22.NodeEntity: StitchVersionedCodable {
    public init(previousInstance: NodeEntity_V22.PreviousInstance) {
        self.id = previousInstance.id
        self.title = previousInstance.title
        self.nodeTypeEntity = .init(previousInstance: previousInstance.nodeTypeEntity)
    }
    
    // MARK: delete this after v22
    func getCanvas() -> CanvasNodeEntity_V22.CanvasNodeEntity? {
        switch self.nodeTypeEntity {
        case .patch(let patchNode):
            return patchNode.canvasEntity
            
        case .group(let canvas):
            return canvas
            
            // Upstream layers are complicated and rare
        case .layer:
            return nil
        }
    }
    
    // MARK: delete this after v22
    func getUpstreamNodeIds() -> Set<UUID> {
        switch self.nodeTypeEntity {
        case .patch(let patchNode):
            let ids = patchNode.inputs.compactMap {
                $0.portData.getUpstreamConnection?.nodeId
            }
            return Set(ids)
            
        case .layer(let layerNode):
            return layerNode.getConnectedUpstreamNodeIds()
            
        case .group:
            // We use splitters
            return []
        }
    }
}
