//
//  CanvasNodeEntity.swift
//
//
//  Created by Elliot Boschwitz on 6/19/24.
//

import Foundation

public enum CanvasNodeEntity_V33: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V33
    public typealias PreviousInstance = CanvasNodeEntity_V32.CanvasNodeEntity
    typealias StitchDocumentSchema = StitchDocument_V33
    public typealias PatchNodeEntitySchema = PatchNodeEntity_V33.PatchNodeEntity
    public typealias LayerNodeEntitySchema = LayerNodeEntity_V33.LayerNodeEntity
    public typealias NodePortInputEntitySchemas = [NodePortInputEntity_V33.NodePortInputEntity]
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

extension CanvasNodeEntity_V33.CanvasNodeEntity: StitchVersionedCodable {
    public init(previousInstance: CanvasNodeEntity_V33.PreviousInstance) {
        self.init(position: previousInstance.position,
                  zIndex: previousInstance.zIndex,
                  parentGroupNodeId: previousInstance.parentGroupNodeId)
    }
}

