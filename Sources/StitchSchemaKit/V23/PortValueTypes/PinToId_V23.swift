//
//  PinToId_V23.swift
//
//
//  Created by Christian J Clampitt on 7/25/24.
//

import Foundation

public enum PinToId_V23: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V23
    public typealias PreviousInstance = Self.PinToId
    // MARK: - end

    // A version of SwiftUI's ContentMode that is Codable and that we own.
    public enum PinToId: Equatable, Hashable, Codable {
        case root,
             parent,
             layer(LayerNodeId_V23.LayerNodeId)
    }
}

extension PinToId_V23.PinToId: StitchVersionedCodable {
    public init(previousInstance: PinToId_V23.PreviousInstance) {
        switch previousInstance {
        case .root:
            self = .root
        case .parent:
            self = .parent
        case .layer(let x):
            self = .layer(.init(x.id)) // Not necessary after version 23
        }
    }
}
