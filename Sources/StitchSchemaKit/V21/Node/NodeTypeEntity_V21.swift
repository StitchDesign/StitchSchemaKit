//
//  NodeTypeEntity_V21.swift
//
//
//  Created by Elliot Boschwitz on 6/19/24.
//

import Foundation

public enum NodeTypeEntity_V21: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V21
    public typealias PreviousInstance = Self.NodeTypeEntity
    // MARK: - end

    public enum NodeTypeEntity: Equatable {
        case patch(PatchNodeEntity_V21.PatchNodeEntity)
        case layer(LayerNodeEntity_V21.LayerNodeEntity)
        case group(CanvasNodeEntity_V21.CanvasNodeEntity)
    }
}

extension NodeTypeEntity_V21.NodeTypeEntity: StitchVersionedCodable {
    public init(previousInstance: NodeTypeEntity_V21.PreviousInstance) {
        fatalError()
    }
}
