//
//  LayerNodeEntity_V1.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 12/29/23.
//

import SwiftUI

public enum LayerNodeEntity_V1: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static var version = StitchSchemaVersion._V1
    public typealias PreviousInstance = Self.LayerNodeEntity
    typealias NodeEntitySchema = NodeEntity_V1
    // MARK: - end

    public struct LayerNodeEntity {
        public  let id: NodeId
        let layer: Layer
        let interactionsDict: InteractionsDict
        let hasSidebarVisibility: Bool
        let layerGroupId: NodeId?
    }
}

extension LayerNodeEntity_V1.LayerNodeEntity: StitchVersionedCodable {
    public init(previousInstance: LayerNodeEntity_V1.PreviousInstance) {
        fatalError()
    }

//    init(from viewModel: LayerNodeViewModel) {
//        self.id = viewModel.id
//        self.layer = viewModel.layer
//        self.interactionsDict = viewModel.interactionsDict
//        self.hasSidebarVisibility = viewModel.hasSidebarVisibility
//        self.layerGroupId = viewModel.layerGroupId
//    }
}
