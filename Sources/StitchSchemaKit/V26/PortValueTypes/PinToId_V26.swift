//
//  PinToId_V26.swift
//
//
//  Created by Christian J Clampitt on 7/25/24.
//

import Foundation

public enum PinToId_V26: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V26
    public typealias PreviousInstance = PinToId_V25.PinToId
    // MARK: - end

    // A version of SwiftUI's ContentMode that is Codable and that we own.
    public enum PinToId: Equatable, Hashable, Codable {
        case root,
             parent,
             layer(LayerNodeId_V26.LayerNodeId)
    }
}

extension PinToId_V26.PinToId: StitchVersionedCodable {
    public init(previousInstance: PinToId_V26.PreviousInstance) {
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
