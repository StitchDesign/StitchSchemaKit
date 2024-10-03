//
//  CanvasNodeEntity.swift
//
//
//  Created by Elliot Boschwitz on 6/19/24.
//

import Foundation

public enum CanvasNodeEntity_V22: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V22
    public typealias PreviousInstance = CanvasNodeEntity_V21.CanvasNodeEntity
    typealias StitchDocumentSchema = StitchDocument_V22
    public typealias PatchNodeEntitySchema = PatchNodeEntity_V22.PatchNodeEntity
    public typealias LayerNodeEntitySchema = LayerNodeEntity_V22.LayerNodeEntity
    public typealias NodePortInputEntitySchemas = [NodePortInputEntity_V22.NodePortInputEntity]
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

extension CanvasNodeEntity_V22.CanvasNodeEntity: StitchVersionedCodable {
    public init(previousInstance: CanvasNodeEntity_V22.PreviousInstance) {
        self.init(position: previousInstance.position,
                  zIndex: previousInstance.zIndex,
                  parentGroupNodeId: previousInstance.parentGroupNodeId)
    }
}

