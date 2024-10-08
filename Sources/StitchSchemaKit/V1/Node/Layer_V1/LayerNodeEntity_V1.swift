//
//  LayerNodeEntity_V1.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 12/29/23.
//

import SwiftUI

public enum LayerNodeEntity_V1: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V1
    public typealias PreviousInstance = Self.LayerNodeEntity
    public typealias NodeEntitySchema = NodeEntity_V1
    public typealias Layer = Layer_V1.Layer
    public typealias InteractionsDict = [InteractionType_V1.InteractionType: Set<UUID>]
    // MARK: - end

    public struct LayerNodeEntity: Equatable {
        public  let id: UUID
        public let layer: Layer
        public let interactionsDict: InteractionsDict
        public let hasSidebarVisibility: Bool
        public let layerGroupId: UUID?
        
        public init(id: UUID,
             layer: Layer,
             interactionsDict: InteractionsDict,
             hasSidebarVisibility: Bool,
             layerGroupId: UUID?) {
            self.id = id
            self.layer = layer
            self.interactionsDict = interactionsDict
            self.hasSidebarVisibility = hasSidebarVisibility
            self.layerGroupId = layerGroupId
        }
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
