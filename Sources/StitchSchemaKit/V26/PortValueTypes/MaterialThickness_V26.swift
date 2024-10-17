//
//  MaterialThickness_V26.swift
//  StitchSchemaKit
//
//  Created by Christian J Clampitt on 10/17/24.
//

import Foundation

public enum MaterialThickness_V26: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V26
    public typealias PreviousInstance = Self.MaterialThickness
    // MARK: - endif

    public enum MaterialThickness: String, CaseIterable, Hashable {
        case ultraThin = "Ultra Thin",
             thin = "Thin",
             regular = "Regular",
             thick = "Thick",
             chrome = "Chrome"
    }
}

// TODO: fix after version 26
extension MaterialThickness_V26.MaterialThickness: StitchVersionedCodable {
    public init(previousInstance: MaterialThickness_V26.PreviousInstance) {
        fatalError()
    }
}
