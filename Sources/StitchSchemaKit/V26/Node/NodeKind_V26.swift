//
//  NodeKind.swift
//
//
//  Created by Elliot Boschwitz on 1/24/24.
//

import Foundation

public enum NodeKind_V26: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V26
    public typealias PreviousInstance = NodeKind_V25.NodeKind
    public typealias Patch = Patch_V26.Patch
    public typealias Layer = Layer_V26.Layer
    // MARK: - endif
    
    public enum NodeKind: Codable, Equatable, Hashable {
        case patch(Patch), layer(Layer), group
    }
}

extension NodeKind_V26.NodeKind: StitchVersionedCodable {
    public init(previousInstance: NodeKind_V26.PreviousInstance) {
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
