//
//  CanvasNodeEntity.swift
//
//
//  Created by Elliot Boschwitz on 6/19/24.
//

import Foundation

public enum CanvasNodeEntity_V21: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V21
    public typealias PreviousInstance = CanvasNodeEntity_V21.CanvasNodeEntity
    typealias StitchDocumentSchema = StitchDocument_V21
    public typealias PatchNodeEntitySchema = PatchNodeEntity_V21.PatchNodeEntity
    public typealias LayerNodeEntitySchema = LayerNodeEntity_V21.LayerNodeEntity
    public typealias NodePortInputEntitySchemas = [NodePortInputEntity_V21.NodePortInputEntity]
    // MARK: - end

    public struct CanvasNodeEntity: Equatable {
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

extension CanvasNodeEntity_V21.CanvasNodeEntity: StitchVersionedCodable {
    public init(previousInstance: CanvasNodeEntity_V21.PreviousInstance) {
        fatalError()
    }
}

