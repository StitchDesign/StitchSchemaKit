//
//  NodeEntity.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/19/23.
//

import Foundation
import SwiftUI

public enum NodeEntity_V6: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static let version = StitchSchemaVersion._V6
    public typealias PreviousInstance = NodeEntity_V5.NodeEntity
    typealias StitchDocumentSchema = StitchDocument_V6
    public typealias PatchNodeEntitySchema = PatchNodeEntity_V6.PatchNodeEntity
    public typealias LayerNodeEntitySchema = LayerNodeEntity_V6.LayerNodeEntity
    public typealias NodePortInputEntitySchemas = [NodePortInputEntity_V6.NodePortInputEntity]
    // MARK: - end

    public struct NodeEntity: Equatable {
        public let id: NodeId
        public var position: CGPoint
        public var zIndex: Double
        public var parentGroupNodeId: NodeId?
        public let patchNodeEntity: PatchNodeEntitySchema?
        public let layerNodeEntity: LayerNodeEntitySchema?
        public let isGroupNode: Bool
        public let title: String
        public let inputs: NodePortInputEntitySchemas
        
        public init(id: NodeId,
             position: CGPoint,
             zIndex: Double,
             parentGroupNodeId: NodeId?,
             patchNodeEntity: PatchNodeEntitySchema?,
             layerNodeEntity: LayerNodeEntitySchema?,
             isGroupNode: Bool,
             title: String,
             inputs: NodePortInputEntitySchemas) {
            self.id = id
            self.position = position
            self.zIndex = zIndex
            self.parentGroupNodeId = parentGroupNodeId
            self.patchNodeEntity = patchNodeEntity
            self.layerNodeEntity = layerNodeEntity
            self.isGroupNode = isGroupNode
            self.title = title
            self.inputs = inputs
        }
    }
}

extension NodeEntity_V6.NodeEntity: StitchVersionedCodable {
    public init(previousInstance: NodeEntity_V6.PreviousInstance) {
        self.init(
            id: previousInstance.id,
            position: previousInstance.position,
            zIndex: previousInstance.zIndex,
            parentGroupNodeId: previousInstance.parentGroupNodeId,
            patchNodeEntity:
                NodeEntity_V6.PatchNodeEntitySchema(previousInstance: previousInstance.patchNodeEntity),
            layerNodeEntity:
                NodeEntity_V6.LayerNodeEntitySchema(previousInstance: previousInstance.layerNodeEntity),
            isGroupNode: previousInstance.isGroupNode,
            title: previousInstance.title,
            inputs: NodeEntity_V6.NodePortInputEntitySchemas(previousElements: previousInstance.inputs)
        )
    }
}
