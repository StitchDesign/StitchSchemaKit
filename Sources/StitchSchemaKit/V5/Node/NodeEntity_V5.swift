//
//  NodeEntity.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/19/23.
//

import Foundation
import SwiftUI

public enum NodeEntity_V5: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V5
    public typealias PreviousInstance = NodeEntity_V4.NodeEntity
    typealias StitchDocumentSchema = StitchDocument_V5
    public typealias PatchNodeEntitySchema = PatchNodeEntity_V5.PatchNodeEntity
    public typealias LayerNodeEntitySchema = LayerNodeEntity_V5.LayerNodeEntity
    public typealias NodePortInputEntitySchemas = [NodePortInputEntity_V5.NodePortInputEntity]
    // MARK: - end

    public struct NodeEntity: Equatable {
        public let id: UUID
        public var position: CGPoint
        public var zIndex: Double
        public var parentGroupNodeId: UUID?
        public let patchNodeEntity: PatchNodeEntitySchema?
        public let layerNodeEntity: LayerNodeEntitySchema?
        public let isGroupNode: Bool
        public let title: String
        public let inputs: NodePortInputEntitySchemas
        
        public init(id: UUID,
             position: CGPoint,
             zIndex: Double,
             parentGroupNodeId: UUID?,
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

extension NodeEntity_V5.NodeEntity: StitchVersionedCodable {
    public init(previousInstance: NodeEntity_V5.PreviousInstance) {
        self.init(
            id: previousInstance.id,
            position: previousInstance.position,
            zIndex: previousInstance.zIndex,
            parentGroupNodeId: previousInstance.parentGroupNodeId,
            patchNodeEntity:
                NodeEntity_V5.PatchNodeEntitySchema(previousInstance: previousInstance.patchNodeEntity),
            layerNodeEntity:
                NodeEntity_V5.LayerNodeEntitySchema(previousInstance: previousInstance.layerNodeEntity),
            isGroupNode: previousInstance.isGroupNode,
            title: previousInstance.title,
            inputs: NodeEntity_V5.NodePortInputEntitySchemas(previousElements: previousInstance.inputs)
        )
    }
}
