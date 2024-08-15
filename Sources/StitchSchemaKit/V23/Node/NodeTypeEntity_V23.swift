//
//  NodeTypeEntity_V23.swift
//
//
//  Created by Elliot Boschwitz on 6/19/24.
//

import Foundation

public enum NodeTypeEntity_V23: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static var version = StitchSchemaVersion._V23
    public typealias PreviousInstance = NodeTypeEntity_V22.NodeTypeEntity
    // MARK: - end

    public enum NodeTypeEntity: Equatable {
        case patch(PatchNodeEntity_V23.PatchNodeEntity)
        case layer(LayerNodeEntity_V23.LayerNodeEntity)
        case group(CanvasNodeEntity_V23.CanvasNodeEntity)
    }
}

extension NodeTypeEntity_V23.NodeTypeEntity: StitchVersionedCodable {
    public init(previousInstance: NodeTypeEntity_V23.PreviousInstance) {
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