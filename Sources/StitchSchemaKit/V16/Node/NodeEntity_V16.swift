//
//  NodeEntity.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/19/23.
//

import Foundation
import SwiftUI

public enum NodeEntity_V16: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V16
    public typealias PreviousInstance = NodeEntity_V15.NodeEntity
    typealias StitchDocumentSchema = StitchDocument_V16
    public typealias PatchNodeEntitySchema = PatchNodeEntity_V16.PatchNodeEntity
    public typealias LayerNodeEntitySchema = LayerNodeEntity_V16.LayerNodeEntity
    public typealias NodePortInputEntitySchemas = [NodePortInputEntity_V16.NodePortInputEntity]
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

extension NodeEntity_V16.NodeEntity: StitchVersionedCodable {
    public init(previousInstance: NodeEntity_V16.PreviousInstance) {
        self.id = previousInstance.id
        self.position = previousInstance.position
        self.zIndex = previousInstance.zIndex
        self.parentGroupNodeId = previousInstance.parentGroupNodeId
        self.patchNodeEntity = PatchNodeEntity_V16.PatchNodeEntity(previousInstance: previousInstance.patchNodeEntity)
        self.layerNodeEntity = LayerNodeEntity_V16.LayerNodeEntity(previousInstance: previousInstance.layerNodeEntity)
        self.isGroupNode = previousInstance.isGroupNode
        self.title = previousInstance.title
        self.inputs = NodeEntity_V16.NodePortInputEntitySchemas(previousElements: previousInstance.inputs)
    }
}
