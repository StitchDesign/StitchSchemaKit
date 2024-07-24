//
//  NodeTypeEntity_V22.swift
//
//
//  Created by Elliot Boschwitz on 6/19/24.
//

import Foundation

public enum NodeTypeEntity_V22: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static var version = StitchSchemaVersion._V22
    public typealias PreviousInstance = Self.NodeTypeEntity
    public typealias PatchNodeEnity = PatchNodeEntity_V22.PatchNodeEntity
    public typealias LayerNodeEntity = LayerNodeEntity_V22.LayerNodeEntity
    public typealias CanvasNodeEntity = CanvasNodeEntity_V22.CanvasNodeEntity
    // MARK: - end

    public enum NodeTypeEntity: Equatable {
        case patch(PatchNodeEntity)
        case layer(LayerNodeEntity)
        case group(CanvasNodeEntity)
    }
}

extension NodeTypeEntity_V22.NodeTypeEntity: StitchVersionedCodable {
    public init(previousInstance: NodeTypeEntity_V22.PreviousInstance) {
        fatalError()
    }
}
