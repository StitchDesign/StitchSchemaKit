//
//  NodeEntity.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/19/23.
//

import Foundation
import SwiftUI

public enum NodeEntity_V3: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static let version = StitchSchemaVersion._V3
    public typealias PreviousInstance = NodeEntity_V1.NodeEntity
    typealias StitchDocumentSchema = StitchDocument_V3
    public typealias PatchNodeEntitySchema = PatchNodeEntity_V3.PatchNodeEntity
    public typealias LayerNodeEntitySchema = LayerNodeEntity_V3.LayerNodeEntity
    public typealias NodePortInputEntitySchemas = [NodePortInputEntity_V3.NodePortInputEntity]
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

extension NodeEntity_V3.NodeEntity: StitchVersionedCodable {
    public init(previousInstance: NodeEntity_V3.PreviousInstance) {
        self.init(
            id: previousInstance.id,
            position: previousInstance.position,
            zIndex: previousInstance.zIndex,
            parentGroupNodeId: previousInstance.parentGroupNodeId,
            patchNodeEntity:
                NodeEntity_V3.PatchNodeEntitySchema(previousInstance: previousInstance.patchNodeEntity),
            layerNodeEntity:
                NodeEntity_V3.LayerNodeEntitySchema(previousInstance: previousInstance.layerNodeEntity),
            isGroupNode: previousInstance.isGroupNode,
            title: previousInstance.title,
            inputs: NodeEntity_V3.NodePortInputEntitySchemas(previousElements: previousInstance.inputs)
        )
    }
}
