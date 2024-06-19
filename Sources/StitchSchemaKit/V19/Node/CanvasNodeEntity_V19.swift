//
//  CanvasNodeEntity.swift
//
//
//  Created by Elliot Boschwitz on 6/19/24.
//

import Foundation

public enum CanvasNodeEntity_V19: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static let version = StitchSchemaVersion._V19
    public typealias PreviousInstance = CanvasNodeEntity_V19.CanvasNodeEntity
    typealias StitchDocumentSchema = StitchDocument_V19
    public typealias PatchNodeEntitySchema = PatchNodeEntity_V19.PatchNodeEntity
    public typealias LayerNodeEntitySchema = LayerNodeEntity_V19.LayerNodeEntity
    public typealias NodePortInputEntitySchemas = [NodePortInputEntity_V19.NodePortInputEntity]
    // MARK: - end

    public struct CanvasNodeEntity {
        public let id: UUID
        public var position: CGPoint
        public var zIndex: Double
        public var parentGroupNodeId: UUID?
        
        public init(id: UUID,
             position: CGPoint,
             zIndex: Double,
             parentGroupNodeId: UUID?) {
            self.id = id
            self.position = position
            self.zIndex = zIndex
            self.parentGroupNodeId = parentGroupNodeId
        }
    }
}

extension CanvasNodeEntity_V19.CanvasNodeEntity: StitchVersionedCodable {
    public init(previousInstance: CanvasNodeEntity_V19.PreviousInstance) {
        fatalError()
    }
}

