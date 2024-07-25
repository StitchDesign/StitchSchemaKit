//
//  File.swift
//  
//
//  Created by Christian J Clampitt on 7/25/24.
//

import Foundation

public enum PinToId_V22: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static let version = StitchSchemaVersion._V22
    public typealias PreviousInstance = Self.PinToId
    // MARK: - end

    // A version of SwiftUI's ContentMode that is Codable and that we own.
    public enum PinToId: Equatable, Hashable, Codable {
        case root,
             parent,
             layer(LayerNodeId_V22.LayerNodeId)
    }
}

extension PinToId_V22.PinToId: StitchVersionedCodable {
    public init(previousInstance: PinToId_V22.PreviousInstance) {
        fatalError() // Added in V22
    }
}
