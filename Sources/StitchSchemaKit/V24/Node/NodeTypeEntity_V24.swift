//
//  NodeTypeEntity_V24.swift
//
//
//  Created by Elliot Boschwitz on 6/19/24.
//

import Foundation

public enum NodeTypeEntity_V24: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V24
    public typealias PreviousInstance = NodeTypeEntity_V23.NodeTypeEntity
    // MARK: - end

    public enum NodeTypeEntity: Equatable {
        case patch(PatchNodeEntity_V24.PatchNodeEntity)
        case layer(LayerNodeEntity_V24.LayerNodeEntity)
        case group(CanvasNodeEntity_V24.CanvasNodeEntity)
    }
}

extension NodeTypeEntity_V24.NodeTypeEntity: StitchVersionedCodable {
    public init(previousInstance: NodeTypeEntity_V24.PreviousInstance) {
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
