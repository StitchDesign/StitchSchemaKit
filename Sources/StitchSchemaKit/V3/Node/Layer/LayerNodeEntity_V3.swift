//
//  LayerNodeEntity_V3.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 12/29/23.
//

import SwiftUI

public enum LayerNodeEntity_V3: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V3
    public typealias PreviousInstance = LayerNodeEntity_V2.LayerNodeEntity
    public typealias NodeEntitySchema = NodeEntity_V3
    public typealias Layer = Layer_V3.Layer
    public typealias InteractionsDict = [InteractionType_V1.InteractionType: Set<UUID>]
    // MARK: - end

    public struct LayerNodeEntity: Equatable {
        public  let id: UUID
        public let layer: Layer
        public let interactionsDict: InteractionsDict
        public let hasSidebarVisibility: Bool
        public let layerGroupId: UUID?
        public let isExpandedInSidebar: Bool?
        
        public init(id: UUID,
                    layer: Layer,
                    interactionsDict: InteractionsDict,
                    hasSidebarVisibility: Bool,
                    layerGroupId: UUID?,
                    isExpandedInSidebar: Bool?) {
            self.id = id
            self.layer = layer
            self.interactionsDict = interactionsDict
            self.hasSidebarVisibility = hasSidebarVisibility
            self.layerGroupId = layerGroupId
            self.isExpandedInSidebar = isExpandedInSidebar
        }
    }
}

extension LayerNodeEntity_V3.LayerNodeEntity: StitchVersionedCodable {
    public init(previousInstance: LayerNodeEntity_V3.PreviousInstance) {
        self.init(id: previousInstance.id,
                  layer:
                    LayerNodeEntity_V3.Layer(previousInstance: previousInstance.layer),
                  interactionsDict: previousInstance.interactionsDict,
                  hasSidebarVisibility: previousInstance.hasSidebarVisibility,
                  layerGroupId: previousInstance.layerGroupId,
                  isExpandedInSidebar: nil)
    }

//    init(from viewModel: LayerNodeViewModel) {
//        self.id = viewModel.id
//        self.layer = viewModel.layer
//        self.interactionsDict = viewModel.interactionsDict
//        self.hasSidebarVisibility = viewModel.hasSidebarVisibility
//        self.layerGroupId = viewModel.layerGroupId
//    }
}
