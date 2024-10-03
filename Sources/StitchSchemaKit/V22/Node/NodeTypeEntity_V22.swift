//
//  NodeTypeEntity_V22.swift
//
//
//  Created by Elliot Boschwitz on 6/19/24.
//

import Foundation

public enum NodeTypeEntity_V22: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V22
    public typealias PreviousInstance = NodeTypeEntity_V21.NodeTypeEntity
    // MARK: - end

    public enum NodeTypeEntity: Equatable {
        case patch(PatchNodeEntity_V22.PatchNodeEntity)
        case layer(LayerNodeEntity_V22.LayerNodeEntity)
        case group(CanvasNodeEntity_V22.CanvasNodeEntity)
    }
}

extension NodeTypeEntity_V22.NodeTypeEntity: StitchVersionedCodable {
    public init(previousInstance: NodeTypeEntity_V22.PreviousInstance) {
        switch previousInstance {
        case .patch(let patchNodeEntity):
            self = .patch(.init(previousInstance: patchNodeEntity))
        case .layer(let layerNodeEntity):
            self = .layer(.init(previousInstance: layerNodeEntity))
        case .group(let canvasNodeEntity):
            self = .group(.init(previousInstance: canvasNodeEntity))
        }
    }
}
