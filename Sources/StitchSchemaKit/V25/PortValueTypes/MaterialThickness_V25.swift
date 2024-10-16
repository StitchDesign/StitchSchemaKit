//
//  File.swift
//  StitchSchemaKit
//
//  Created by Christian J Clampitt on 10/16/24.
//

import Foundation

public enum MaterialThickness_V25: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V25
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

// TODO: fix after version 25
extension MaterialThickness_V25.MaterialThickness: StitchVersionedCodable {
    public init(previousInstance: MaterialThickness_V25.PreviousInstance) {
        fatalError()
    }
}

