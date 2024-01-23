//
//  NodeEntity.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/19/23.
//

import Foundation
import SwiftUI

public enum NodeEntity_V1: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static let version = StitchSchemaVersion._V1
    public typealias PreviousInstance = Self.NodeEntity
    typealias StitchDocumentSchema = StitchDocument_V1
    typealias PatchNodeEntitySchema = PatchNodeEntity_V1
    typealias LayerNodeEntitySchema = LayerNodeEntity_V1
    typealias NodePortInputEntitySchema = NodePortInputEntity_V1
    // MARK: - end

    public struct NodeEntity {
        public let id: NodeId
        let position: CGPoint
        let zIndex: Double
        let parentGroupNodeId: NodeId?
        let patchNodeEntity: PatchNodeEntitySchema.PatchNodeEntity?
        let layerNodeEntity: LayerNodeEntitySchema.LayerNodeEntity?
        let isGroupNode: Bool
        let title: String
        let inputs: [NodePortInputEntitySchema.NodePortInputEntity]
    }
}

extension NodeEntity_V1.NodeEntity: StitchVersionedCodable {
    public init(previousInstance: NodeEntity_V1.PreviousInstance) {
        fatalError()
    }

//    init(from viewModel: NodeViewModel) {
//        var patchNodeEntity: PatchNodeEntity_V1.PatchNodeEntity?
//        var layerNodeEntity: LayerNodeEntity_V1.LayerNodeEntity?
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
