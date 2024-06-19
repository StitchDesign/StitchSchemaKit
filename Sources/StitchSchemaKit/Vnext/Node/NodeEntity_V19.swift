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
    public typealias NodeTypeEntity = NodeTypeEntity_V19.NodeTypeEntity
    // MARK: - end

    public struct NodeEntity: Equatable, Identifiable {
        public let id: UUID
        public var nodeTypeEntity: NodeTypeEntity
        public let title: String
        
        public init(id: UUID,
                    nodeTypeEntity: NodeTypeEntity,
                    title: String) {
            self.id = id
            self.nodeTypeEntity = nodeTypeEntity
            self.title = title
        }
    }
}

extension NodeEntity_V19.NodeEntity: StitchVersionedCodable {
    public init(previousInstance: NodeEntity_V19.PreviousInstance) {
        self.id = previousInstance.id
        self.title = previousInstance.title
        let migratedPatchNodeEntity = PatchNodeEntity_V19.PatchNodeEntity(previousInstance: previousInstance.patchNodeEntity)
        let migratedLayerNodeEntity = LayerNodeEntity_V19.LayerNodeEntity(previousInstance: previousInstance.layerNodeEntity)
        
        let canvasNodeEntity = CanvasNodeEntity_V19
            .CanvasNodeEntity(position: previousInstance.position,
                              zIndex: previousInstance.zIndex,
                              parentGroupNodeId: previousInstance.parentGroupNodeId)
        
        if previousInstance.isGroupNode {
            self.nodeTypeEntity = .group(canvasNodeEntity)
        } else if var migratedLayerNodeEntity = migratedLayerNodeEntity {
            let canvasItem = CanvasNodeEntity_V19
                .CanvasNodeEntity(position: previousInstance.position,
                                  zIndex: previousInstance.zIndex,
                                  parentGroupNodeId: previousInstance.parentGroupNodeId)
            
            // MARK: arbitrarily use position port until inspector is supported
            migratedLayerNodeEntity.positionPort.canvasItem = canvasItem
            
            self.nodeTypeEntity = .layer(migratedLayerNodeEntity)
        } else if var migratedPatchNodeEntity = migratedPatchNodeEntity {
            // Set migrated inputs to patch
            let migratedInputs = PatchNodeEntity_V19.NodePortInputEntitySchemas(previousElements: previousInstance.inputs)
            migratedPatchNodeEntity.inputs = migratedInputs
            migratedPatchNodeEntity.canvasEntity = canvasNodeEntity
            self.nodeTypeEntity = .patch(migratedPatchNodeEntity)
        }
        
        // Crash on debug if no match found--this shouldn't happen
        #if DEBUG
        fatalError()
        #endif
        self.nodeTypeEntity = .group(canvasNodeEntity)
    }
}
