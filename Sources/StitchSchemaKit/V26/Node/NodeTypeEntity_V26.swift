//
//  NodeTypeEntity_V26.swift
//
//
//  Created by Elliot Boschwitz on 6/19/24.
//

import Foundation

public enum NodeTypeEntity_V26: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V26
    public typealias PreviousInstance = NodeTypeEntity_V25.NodeTypeEntity
    // MARK: - end

    public enum NodeTypeEntity: Hashable {
        case patch(PatchNodeEntity_V26.PatchNodeEntity)
        case layer(LayerNodeEntity_V26.LayerNodeEntity)
        case group(CanvasNodeEntity_V26.CanvasNodeEntity)
        case component(ComponentEntity_V26.ComponentEntity)
    }
}

extension NodeTypeEntity_V26.NodeTypeEntity: StitchVersionedCodable {
    public init(previousInstance: NodeTypeEntity_V26.PreviousInstance) {
        switch previousInstance {
        case .patch(let patchNodeEntity):
            self = .patch(.init(previousInstance: patchNodeEntity))
        case .layer(let layerNodeEntity):
            self = .layer(.init(previousInstance: layerNodeEntity))
        case .group(let canvasNodeEntity):
            self = .group(.init(previousInstance: canvasNodeEntity))
        case .component(let componentEntity):
            self = .component(.init(previousInstance: componentEntity))
        }
    }
}
