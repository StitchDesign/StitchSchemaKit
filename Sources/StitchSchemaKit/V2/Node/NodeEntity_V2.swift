//
//  NodeEntity.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/19/23.
//

import Foundation
import SwiftUI

public enum NodeEntity_V2: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static let version = StitchSchemaVersion._V2
    public typealias PreviousInstance = NodeEntity_V1.NodeEntity
    typealias StitchDocumentSchema = StitchDocument_V2
    public typealias PatchNodeEntitySchema = PatchNodeEntity_V2.PatchNodeEntity
    public typealias LayerNodeEntitySchema = LayerNodeEntity_V2.LayerNodeEntity
    public typealias NodePortInputEntitySchemas = [NodePortInputEntity_V2.NodePortInputEntity]
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

extension NodeEntity_V2.NodeEntity: StitchVersionedCodable {
    public init(previousInstance: NodeEntity_V2.PreviousInstance) {
        self.init(
            id: previousInstance.id,
            position: previousInstance.position,
            zIndex: previousInstance.zIndex,
            parentGroupNodeId: previousInstance.parentGroupNodeId,
            patchNodeEntity:
                NodeEntity_V2.PatchNodeEntitySchema(previousInstance: previousInstance.patchNodeEntity),
            layerNodeEntity:
                NodeEntity_V2.LayerNodeEntitySchema(previousInstance: previousInstance.layerNodeEntity),
            isGroupNode: previousInstance.isGroupNode,
            title: previousInstance.title,
            inputs: NodeEntity_V2.NodePortInputEntitySchemas(previousElements: previousInstance.inputs)
        )
    }
}
