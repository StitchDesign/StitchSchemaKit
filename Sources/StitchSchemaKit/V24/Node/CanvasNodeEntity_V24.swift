//
//  CanvasNodeEntity.swift
//
//
//  Created by Elliot Boschwitz on 6/19/24.
//

import Foundation

public enum CanvasNodeEntity_V24: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V24
    public typealias PreviousInstance = CanvasNodeEntity_V23.CanvasNodeEntity
    typealias StitchDocumentSchema = StitchDocument_V24
    public typealias PatchNodeEntitySchema = PatchNodeEntity_V24.PatchNodeEntity
    public typealias LayerNodeEntitySchema = LayerNodeEntity_V24.LayerNodeEntity
    public typealias NodePortInputEntitySchemas = [NodePortInputEntity_V24.NodePortInputEntity]
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

extension CanvasNodeEntity_V24.CanvasNodeEntity: StitchVersionedCodable {
    public init(previousInstance: CanvasNodeEntity_V24.PreviousInstance) {
        self.init(position: previousInstance.position,
                  zIndex: previousInstance.zIndex,
                  parentGroupNodeId: previousInstance.parentGroupNodeId)
    }
}

