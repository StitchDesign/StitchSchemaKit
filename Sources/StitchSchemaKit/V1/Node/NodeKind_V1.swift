//
//  NodeKind.swift
//
//
//  Created by Elliot Boschwitz on 1/24/24.
//

import Foundation

public enum NodeKind_V1: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V1
    public typealias PreviousInstance = Self.NodeKind
    public typealias Patch = Patch_V1.Patch
    public typealias Layer = Layer_V1.Layer
    // MARK: - endif
    
    public enum NodeKind: Codable, Equatable, Hashable {
        case patch(Patch), layer(Layer), group
    }
}

extension NodeKind_V1.NodeKind: StitchVersionedCodable {
    public init(previousInstance: NodeKind_V1.PreviousInstance) {
        fatalError()
    }
}
