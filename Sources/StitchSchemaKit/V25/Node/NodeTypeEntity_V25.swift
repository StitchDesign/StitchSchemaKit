//
//  NodeTypeEntity_V25.swift
//
//
//  Created by Elliot Boschwitz on 6/19/24.
//

import Foundation

public enum NodeTypeEntity_V25: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V25
    public typealias PreviousInstance = NodeTypeEntity_V24.NodeTypeEntity
    // MARK: - end

    public enum NodeTypeEntity: Hashable {
        case patch(PatchNodeEntity_V25.PatchNodeEntity)
        case layer(LayerNodeEntity_V25.LayerNodeEntity)
        case group(CanvasNodeEntity_V25.CanvasNodeEntity)
        case component(ComponentEntity_V25.ComponentEntity)
    }
}

extension NodeTypeEntity_V25.NodeTypeEntity: StitchVersionedCodable {
    public init(previousInstance: NodeTypeEntity_V25.PreviousInstance) {
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
