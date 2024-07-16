//
//  NodeTypeEntity.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/19/23.
//

import Foundation
import SwiftUI

public enum NodeEntity_V21: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static let version = StitchSchemaVersion._V20
    public typealias PreviousInstance = NodeEntity_V20.NodeEntity
    public typealias NodeTypeEntity = NodeTypeEntity_V21.NodeTypeEntity
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

extension NodeEntity_V21.NodeEntity: StitchVersionedCodable {
    public init(previousInstance: NodeEntity_V21.PreviousInstance) {
        self.id = previousInstance.id
        self.title = previousInstance.title
        let migratedPatchNodeEntity = PatchNodeEntity_V21.PatchNodeEntity(previousInstance: previousInstance.patchNodeEntity)
        let migratedLayerNodeEntity = LayerNodeEntity_V21.LayerNodeEntity(previousInstance: previousInstance.layerNodeEntity)
        
        let canvasNodeEntity = CanvasNodeEntity_V21
            .CanvasNodeEntity(position: previousInstance.position,
                              zIndex: previousInstance.zIndex,
                              parentGroupNodeId: previousInstance.parentGroupNodeId)
        
        if previousInstance.isGroupNode {
            self.nodeTypeEntity = .group(canvasNodeEntity)
        } else if var migratedLayerNodeEntity = migratedLayerNodeEntity {
            let canvasItem = CanvasNodeEntity_V21
                .CanvasNodeEntity(position: previousInstance.position,
                                  zIndex: previousInstance.zIndex,
                                  parentGroupNodeId: previousInstance.parentGroupNodeId)
            
            // MARK: arbitrarily use position port until inspector is supported
            migratedLayerNodeEntity.positionPort.canvasItem = canvasItem
            
            self.nodeTypeEntity = .layer(migratedLayerNodeEntity)
        } else if var migratedPatchNodeEntity = migratedPatchNodeEntity {
            // Set migrated inputs to patch
            let migratedInputs = PatchNodeEntity_V21.NodePortInputEntitySchemas(previousElements: previousInstance.inputs)
            migratedPatchNodeEntity.inputs = migratedInputs
            migratedPatchNodeEntity.canvasEntity = canvasNodeEntity
            self.nodeTypeEntity = .patch(migratedPatchNodeEntity)
        } else {
            // Crash on debug if no match found--this shouldn't happen
#if DEBUG
            fatalError()
#endif
            self.nodeTypeEntity = .group(canvasNodeEntity)
        }
    }
}
