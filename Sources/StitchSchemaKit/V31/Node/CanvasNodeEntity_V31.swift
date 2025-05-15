//
//  CanvasNodeEntity.swift
//
//
//  Created by Elliot Boschwitz on 6/19/24.
//

import Foundation

public enum CanvasNodeEntity_V31: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V31
    public typealias PreviousInstance = CanvasNodeEntity_V30.CanvasNodeEntity
    typealias StitchDocumentSchema = StitchDocument_V31
    public typealias PatchNodeEntitySchema = PatchNodeEntity_V31.PatchNodeEntity
    public typealias LayerNodeEntitySchema = LayerNodeEntity_V31.LayerNodeEntity
    public typealias NodePortInputEntitySchemas = [NodePortInputEntity_V31.NodePortInputEntity]
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

extension CanvasNodeEntity_V31.CanvasNodeEntity: StitchVersionedCodable {
    public init(previousInstance: CanvasNodeEntity_V31.PreviousInstance) {
        self.init(position: previousInstance.position,
                  zIndex: previousInstance.zIndex,
                  parentGroupNodeId: previousInstance.parentGroupNodeId)
    }
}

