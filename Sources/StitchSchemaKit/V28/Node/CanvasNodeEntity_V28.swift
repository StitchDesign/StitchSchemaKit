//
//  CanvasNodeEntity.swift
//
//
//  Created by Elliot Boschwitz on 6/19/24.
//

import Foundation

public enum CanvasNodeEntity_V28: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V28
    public typealias PreviousInstance = CanvasNodeEntity_V27.CanvasNodeEntity
    typealias StitchDocumentSchema = StitchDocument_V28
    public typealias PatchNodeEntitySchema = PatchNodeEntity_V28.PatchNodeEntity
    public typealias LayerNodeEntitySchema = LayerNodeEntity_V28.LayerNodeEntity
    public typealias NodePortInputEntitySchemas = [NodePortInputEntity_V28.NodePortInputEntity]
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

extension CanvasNodeEntity_V28.CanvasNodeEntity: StitchVersionedCodable {
    public init(previousInstance: CanvasNodeEntity_V28.PreviousInstance) {
        self.init(position: previousInstance.position,
                  zIndex: previousInstance.zIndex,
                  parentGroupNodeId: previousInstance.parentGroupNodeId)
    }
}

