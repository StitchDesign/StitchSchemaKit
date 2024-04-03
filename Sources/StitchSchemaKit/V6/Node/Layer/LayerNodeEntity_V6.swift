//
//  LayerNodeEntity_V6.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 12/29/23.
//

import SwiftUI

public enum LayerNodeEntity_V6: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static var version = StitchSchemaVersion._V6
    public typealias PreviousInstance = LayerNodeEntity_V5.LayerNodeEntity
    public typealias NodeEntitySchema = NodeEntity_V6
    public typealias Layer = Layer_V6.Layer
    public typealias NodeConnectionType = NodeConnectionType_V6.NodeConnectionType
    // MARK: - end

    public struct LayerNodeEntity: Equatable {
        public  let id: NodeId
        public let layer: Layer
        
        // Value data
        public let positionPort: NodeConnectionType
        
        // Sidebar data
        public let hasSidebarVisibility: Bool
        public let layerGroupId: NodeId?
        public let isExpandedInSidebar: Bool?
        
        public init(id: NodeId,
                    layer: Layer,
                    positionPort: NodeConnectionType,
                    hasSidebarVisibility: Bool,
                    layerGroupId: NodeId?,
                    isExpandedInSidebar: Bool?) {
            self.id = id
            self.layer = layer
            self.positionPort = positionPort
            self.hasSidebarVisibility = hasSidebarVisibility
            self.layerGroupId = layerGroupId
            self.isExpandedInSidebar = isExpandedInSidebar
        }
    }
}

extension LayerNodeEntity_V6.LayerNodeEntity: StitchVersionedCodable {
    public init(previousInstance: LayerNodeEntity_V6.PreviousInstance) {
        self.init(id: previousInstance.id,
                  layer:
                    LayerNodeEntity_V6.Layer(previousInstance: previousInstance.layer),
                  positionPort: .values([.none]),
                  hasSidebarVisibility: previousInstance.hasSidebarVisibility,
                  layerGroupId: previousInstance.layerGroupId,
                  isExpandedInSidebar: previousInstance.isExpandedInSidebar)
    }
}
