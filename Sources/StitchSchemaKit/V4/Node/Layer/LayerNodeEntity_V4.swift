//
//  LayerNodeEntity_V4.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 12/29/23.
//

import SwiftUI

public enum LayerNodeEntity_V4: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static var version = StitchSchemaVersion._V4
    public typealias PreviousInstance = LayerNodeEntity_V3.LayerNodeEntity
    public typealias NodeEntitySchema = NodeEntity_V4
    public typealias Layer = Layer_V4.Layer
    // MARK: - end

    public struct LayerNodeEntity: Equatable {
        public  let id: NodeId
        public let layer: Layer
        public let hasSidebarVisibility: Bool
        public let layerGroupId: NodeId?
        
        public init(id: NodeId,
             layer: Layer,
             hasSidebarVisibility: Bool,
             layerGroupId: NodeId?) {
            self.id = id
            self.layer = layer
            self.hasSidebarVisibility = hasSidebarVisibility
            self.layerGroupId = layerGroupId
        }
    }
}

extension LayerNodeEntity_V4.LayerNodeEntity: StitchVersionedCodable {
    public init(previousInstance: LayerNodeEntity_V4.PreviousInstance) {
        self.init(id: previousInstance.id,
                  layer:
                    LayerNodeEntity_V4.Layer(previousInstance: previousInstance.layer),
                  hasSidebarVisibility: previousInstance.hasSidebarVisibility,
                  layerGroupId: previousInstance.layerGroupId)
    }

//    init(from viewModel: LayerNodeViewModel) {
//        self.id = viewModel.id
//        self.layer = viewModel.layer
//        self.interactionsDict = viewModel.interactionsDict
//        self.hasSidebarVisibility = viewModel.hasSidebarVisibility
//        self.layerGroupId = viewModel.layerGroupId
//    }
}
