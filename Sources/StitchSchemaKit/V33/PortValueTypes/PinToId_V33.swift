//
//  PinToId_V33.swift
//
//
//  Created by Christian J Clampitt on 7/25/24.
//

import Foundation

public enum PinToId_V33: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V33
    public typealias PreviousInstance = PinToId_V32.PinToId
    // MARK: - end

    // A version of SwiftUI's ContentMode that is Codable and that we own.
    public enum PinToId: Equatable, Hashable, Codable {
        case root,
             parent,
             layer(LayerNodeId_V33.LayerNodeId)
    }
}

extension PinToId_V33.PinToId: StitchVersionedCodable {
    public init(previousInstance: PinToId_V33.PreviousInstance) {
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
