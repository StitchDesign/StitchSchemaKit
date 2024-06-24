//
//  NodeEntityType_V19.swift
//
//
//  Created by Elliot Boschwitz on 6/19/24.
//

import Foundation

public enum NodeTypeEntity_V19: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static var version = StitchSchemaVersion._V19
    public typealias PreviousInstance = Self.NodeTypeEntity
    public typealias PatchNodeEnity = PatchNodeEntity_V19.PatchNodeEntity
    public typealias LayerNodeEntity = LayerNodeEntity_V19.LayerNodeEntity
    public typealias CanvasNodeEntity = CanvasNodeEntity_V19.CanvasNodeEntity
    // MARK: - end

    public enum NodeTypeEntity: Equatable {
        case patch(PatchNodeEntity)
        case layer(LayerNodeEntity)
        case group(CanvasNodeEntity)
    }
}

extension NodeTypeEntity_V19.NodeTypeEntity: StitchVersionedCodable {
    public init(previousInstance: NodeTypeEntity_V19.PreviousInstance) {
        fatalError()
    }
}
