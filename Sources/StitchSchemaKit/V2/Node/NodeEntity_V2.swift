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
    public typealias PatchNodeEntitySchema = PatchNodeEntity_V2
    public typealias LayerNodeEntitySchema = LayerNodeEntity_V2
    public typealias NodePortInputEntitySchema = NodePortInputEntity_V2
    // MARK: - end

    public struct NodeEntity {
        public let id: NodeId
        public let position: CGPoint
        public let zIndex: Double
        public let parentGroupNodeId: NodeId?
        public let patchNodeEntity: PatchNodeEntitySchema.PatchNodeEntity?
        public let layerNodeEntity: LayerNodeEntitySchema.LayerNodeEntity?
        public let isGroupNode: Bool
        public let title: String
        public let inputs: [NodePortInputEntitySchema.NodePortInputEntity]
        
        public init(id: NodeId,
             position: CGPoint,
             zIndex: Double,
             parentGroupNodeId: NodeId?,
             patchNodeEntity: PatchNodeEntitySchema.PatchNodeEntity?,
             layerNodeEntity: LayerNodeEntitySchema.LayerNodeEntity?,
             isGroupNode: Bool,
             title: String,
             inputs: [NodePortInputEntitySchema.NodePortInputEntity]) {
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
        fatalError()
    }

//    init(from viewModel: NodeViewModel) {
//        var patchNodeEntity: PatchNodeEntity_V2.PatchNodeEntity?
//        var layerNodeEntity: LayerNodeEntity_V2.LayerNodeEntity?
//
//        self.id = viewModel.id
//        self.position = viewModel.position
//        self.zIndex = viewModel.zIndex
//        self.parentGroupNodeId = viewModel.parentGroupNodeId
//        self.isGroupNode = viewModel.kind.isGroup
//        self.title = viewModel.title
//
//        switch viewModel.nodeType {
//        case .patch(let patchNode):
//            patchNodeEntity = .init(from: patchNode)
//        case .layer(let layerNode):
//            layerNodeEntity = .init(from: layerNode)
//        case .group:
//            break
//        }
//
//        self.patchNodeEntity = patchNodeEntity
//        self.layerNodeEntity = layerNodeEntity
//        self.inputs = viewModel.inputsObservers.map { $0.createSchema() }
//    }
}
