//
//  CanvasNodeEntity.swift
//
//
//  Created by Elliot Boschwitz on 6/19/24.
//

import Foundation

public enum CanvasNodeEntity_V29: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V29
    public typealias PreviousInstance = CanvasNodeEntity_V28.CanvasNodeEntity
    typealias StitchDocumentSchema = StitchDocument_V29
    public typealias PatchNodeEntitySchema = PatchNodeEntity_V29.PatchNodeEntity
    public typealias LayerNodeEntitySchema = LayerNodeEntity_V29.LayerNodeEntity
    public typealias NodePortInputEntitySchemas = [NodePortInputEntity_V29.NodePortInputEntity]
    // MARK: - end

    public struct CanvasNodeEntity: Hashable {
        public var position: CGPoint
        public var zIndex: Double
        public var parentGroupNodeId: UUID?
        
        public init(position: CGPoint,
                    zIndex: Double,
                    parentGroupNodeId: UUID?) {
            self.position = position
            self.zIndex = zIndex
            self.parentGroupNodeId = parentGroupNodeId
        }
    }
}

extension CanvasNodeEntity_V29.CanvasNodeEntity: StitchVersionedCodable {
    public init(previousInstance: CanvasNodeEntity_V29.PreviousInstance) {
                
        // TODO: remove after version 29
        var position = previousInstance.position
        position.x += StitchDocument_V29.STITCH_GRAPH_LENGTH/2
        position.y += StitchDocument_V29.STITCH_GRAPH_LENGTH/2
        
        self.init(position: position,
                  zIndex: previousInstance.zIndex,
                  parentGroupNodeId: previousInstance.parentGroupNodeId)
    }
}

