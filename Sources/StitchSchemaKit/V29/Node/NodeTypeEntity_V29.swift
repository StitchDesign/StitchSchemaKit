//
//  NodeTypeEntity_V29.swift
//
//
//  Created by Elliot Boschwitz on 6/19/24.
//

import Foundation

public enum NodeTypeEntity_V29: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V29
    public typealias PreviousInstance = NodeTypeEntity_V28.NodeTypeEntity
    // MARK: - end

    public enum NodeTypeEntity: Hashable {
        case patch(PatchNodeEntity_V29.PatchNodeEntity)
        case layer(LayerNodeEntity_V29.LayerNodeEntity)
        case group(CanvasNodeEntity_V29.CanvasNodeEntity)
        case component(ComponentEntity_V29.ComponentEntity)
    }
}

extension NodeTypeEntity_V29.NodeTypeEntity: StitchVersionedCodable {
    public init(previousInstance: NodeTypeEntity_V29.PreviousInstance) {
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
