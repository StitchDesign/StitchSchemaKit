//
//  NodeKind.swift
//
//
//  Created by Elliot Boschwitz on 1/24/24.
//

import Foundation

public enum NodeKind_V16: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V16
    public typealias PreviousInstance = NodeKind_V15.NodeKind
    public typealias Patch = Patch_V16.Patch
    public typealias Layer = Layer_V16.Layer
    // MARK: - endif
    
    public enum NodeKind: Codable, Equatable, Hashable {
        case patch(Patch), layer(Layer), group
    }
}

extension NodeKind_V16.NodeKind: StitchVersionedCodable {
    public init(previousInstance: NodeKind_V16.PreviousInstance) {
        switch previousInstance {
            
        case .patch(let value):
            self = .patch(.init(previousInstance: value))
        case .layer(let value):
            self = .layer(.init(previousInstance: value))
        case .group:
            self = .group
        }
    }
}
