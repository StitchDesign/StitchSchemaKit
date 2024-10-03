//
//  PinToId_V25.swift
//
//
//  Created by Christian J Clampitt on 7/25/24.
//

import Foundation

public enum PinToId_V25: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V25
    public typealias PreviousInstance = PinToId_V24.PinToId
    // MARK: - end

    // A version of SwiftUI's ContentMode that is Codable and that we own.
    public enum PinToId: Equatable, Hashable, Codable {
        case root,
             parent,
             layer(LayerNodeId_V25.LayerNodeId)
    }
}

extension PinToId_V25.PinToId: StitchVersionedCodable {
    public init(previousInstance: PinToId_V25.PreviousInstance) {
        switch previousInstance {
        case .root:
            self = .root
        case .parent:
            self = .parent
        case .layer(let x):
            self = .layer(.init(previousInstance: x))
        }
    }
}
