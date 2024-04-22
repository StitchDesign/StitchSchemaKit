//
//  NodeEntity.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/19/23.
//

import Foundation
import SwiftUI

public enum NodeEntity_V10: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static let version = StitchSchemaVersion._V10
    public typealias PreviousInstance = NodeEntity_V9.NodeEntity
    typealias StitchDocumentSchema = StitchDocument_V10
    public typealias PatchNodeEntitySchema = PatchNodeEntity_V10.PatchNodeEntity
    public typealias LayerNodeEntitySchema = LayerNodeEntity_V10.LayerNodeEntity
    public typealias NodePortInputEntitySchemas = [NodePortInputEntity_V10.NodePortInputEntity]
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

extension NodeEntity_V10.NodeEntity: StitchVersionedCodable {
    public init(previousInstance: NodeEntity_V10.PreviousInstance) {
        self.id = previousInstance.id
        self.position = previousInstance.position
        self.zIndex = previousInstance.zIndex
        self.parentGroupNodeId = previousInstance.parentGroupNodeId
        self.patchNodeEntity = PatchNodeEntity_V10.PatchNodeEntity(previousInstance: previousInstance.patchNodeEntity)
        self.layerNodeEntity = LayerNodeEntity_V10.LayerNodeEntity(previousInstance: previousInstance.layerNodeEntity)
        self.isGroupNode = previousInstance.isGroupNode
        self.title = previousInstance.title
        self.inputs = NodeEntity_V10.NodePortInputEntitySchemas(previousElements: previousInstance.inputs)
    }
}
