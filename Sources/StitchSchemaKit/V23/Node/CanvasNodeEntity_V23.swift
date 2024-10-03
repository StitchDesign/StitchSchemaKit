//
//  CanvasNodeEntity.swift
//
//
//  Created by Elliot Boschwitz on 6/19/24.
//

import Foundation

public enum CanvasNodeEntity_V23: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V23
    public typealias PreviousInstance = CanvasNodeEntity_V22.CanvasNodeEntity
    typealias StitchDocumentSchema = StitchDocument_V23
    public typealias PatchNodeEntitySchema = PatchNodeEntity_V23.PatchNodeEntity
    public typealias LayerNodeEntitySchema = LayerNodeEntity_V23.LayerNodeEntity
    public typealias NodePortInputEntitySchemas = [NodePortInputEntity_V23.NodePortInputEntity]
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

extension CanvasNodeEntity_V23.CanvasNodeEntity: StitchVersionedCodable {
    public init(previousInstance: CanvasNodeEntity_V23.PreviousInstance) {
        self.init(position: previousInstance.position,
                  zIndex: previousInstance.zIndex,
                  parentGroupNodeId: previousInstance.parentGroupNodeId)
    }
}

