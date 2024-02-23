//
//  LayerNodeEntity_V2.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 12/29/23.
//

import SwiftUI

public enum LayerNodeEntity_V2: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static var version = StitchSchemaVersion._V2
    public typealias PreviousInstance = LayerNodeEntity_V1.LayerNodeEntity
    public typealias NodeEntitySchema = NodeEntity_V2
    public typealias Layer = Layer_V2.Layer
    // MARK: - end

    public struct LayerNodeEntity: Equatable {
        public  let id: NodeId
        public let layer: Layer
        public let interactionsDict: InteractionsDict
        public let hasSidebarVisibility: Bool
        public let layerGroupId: NodeId?
        
        public init(id: NodeId,
             layer: Layer,
             interactionsDict: InteractionsDict,
             hasSidebarVisibility: Bool,
             layerGroupId: NodeId?) {
            self.id = id
            self.layer = layer
            self.interactionsDict = interactionsDict
            self.hasSidebarVisibility = hasSidebarVisibility
            self.layerGroupId = layerGroupId
        }
    }
}

extension LayerNodeEntity_V2.LayerNodeEntity: StitchVersionedCodable {
    public init(previousInstance: LayerNodeEntity_V2.PreviousInstance) {
        self.init(id: previousInstance.id,
                  layer:
                    LayerNodeEntity_V2.Layer(previousInstance: previousInstance.layer),
                  interactionsDict: previousInstance.interactionsDict,
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
