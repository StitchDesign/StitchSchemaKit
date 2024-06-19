//
//  NodeTypeEntity.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/19/23.
//

import Foundation
import SwiftUI

public enum NodeEntity_V19: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static let version = StitchSchemaVersion._V19
    public typealias PreviousInstance = NodeEntity_V18.NodeEntity
    public typealias NodeEntityType = NodeEntityType_V19.NodeEntityType
    // MARK: - end

    public struct NodeEntity: Identifiable {
        public let id: UUID
        public let nodeEntityType: NodeEntityType
        public let title: String
        
        public init(id: UUID,
                    nodeEntityType: NodeEntityType,
                    title: String) {
            self.id = id
            self.nodeEntityType = nodeEntityType
            self.title = title
        }
    }
}

extension NodeEntity_V19.NodeEntity: StitchVersionedCodable {
    public init(previousInstance: NodeEntity_V19.PreviousInstance) {
        self.id = previousInstance.id
        self.title = previousInstance.title
        var migratedPatchNodeEntity = PatchNodeEntity_V19.PatchNodeEntity(previousInstance: previousInstance.patchNodeEntity)
        let migratedLayerNodeEntity = LayerNodeEntity_V19.LayerNodeEntity(previousInstance: previousInstance.layerNodeEntity)
        
        let canvasNodeEntity = CanvasNodeEntity_V19
            .CanvasNodeEntity(id: .init(),
                              position: previousInstance.position,
                              zIndex: previousInstance.zIndex,
                              parentGroupNodeId: previousInstance.parentGroupNodeId)
        
        if previousInstance.isGroupNode {
            self.nodeEntityType = .group(canvasNodeEntity)
        } else if let migratedLayerNodeEntity = migratedLayerNodeEntity {
            self.nodeEntityType = .layer(migratedLayerNodeEntity)
        } else if var migratedPatchNodeEntity = migratedPatchNodeEntity {
            // Set migrated inputs to patch
            let migratedInputs = PatchNodeEntity_V19.NodePortInputEntitySchemas(previousElements: previousInstance.inputs)
            migratedPatchNodeEntity.inputs = migratedInputs
            self.nodeEntityType = .patch(migratedPatchNodeEntity)
        }
        
        // Crash on debug if no match found--this shouldn't happen
        #if DEBUG
        fatalError()
        #endif
        self.nodeEntityType = .group(canvasNodeEntity)
    }
}
