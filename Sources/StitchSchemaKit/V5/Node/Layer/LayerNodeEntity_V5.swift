//
//  LayerNodeEntity_V5.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 12/29/23.
//

import SwiftUI

public enum LayerNodeEntity_V5: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static var version = StitchSchemaVersion._V5
    public typealias PreviousInstance = LayerNodeEntity_V4.LayerNodeEntity
    public typealias NodeEntitySchema = NodeEntity_V5
    public typealias Layer = Layer_V5.Layer
    // MARK: - end

    public struct LayerNodeEntity: Equatable {
        public  let id: UUID
        public let layer: Layer
        public let hasSidebarVisibility: Bool
        public let layerGroupId: UUID?
        public let isExpandedInSidebar: Bool?
        
        public init(id: UUID,
                    layer: Layer,
                    hasSidebarVisibility: Bool,
                    layerGroupId: UUID?,
                    isExpandedInSidebar: Bool?) {
            self.id = id
            self.layer = layer
            self.hasSidebarVisibility = hasSidebarVisibility
            self.layerGroupId = layerGroupId
            self.isExpandedInSidebar = isExpandedInSidebar
        }
    }
}

extension LayerNodeEntity_V5.LayerNodeEntity: StitchVersionedCodable {
    public init(previousInstance: LayerNodeEntity_V5.PreviousInstance) {
        self.init(id: previousInstance.id,
                  layer:
                    LayerNodeEntity_V5.Layer(previousInstance: previousInstance.layer),
                  hasSidebarVisibility: previousInstance.hasSidebarVisibility,
                  layerGroupId: previousInstance.layerGroupId,
                  isExpandedInSidebar: previousInstance.isExpandedInSidebar)
    }

//    init(from viewModel: LayerNodeViewModel) {
//        self.id = viewModel.id
//        self.layer = viewModel.layer
//        self.interactionsDict = viewModel.interactionsDict
//        self.hasSidebarVisibility = viewModel.hasSidebarVisibility
//        self.layerGroupId = viewModel.layerGroupId
//    }
}
