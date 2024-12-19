//
//  MaterialThickness_V28.swift
//  StitchSchemaKit
//
//  Created by Christian J Clampitt on 10/17/24.
//

import Foundation

public enum MaterialThickness_V28: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V28
    public typealias PreviousInstance = MaterialThickness_V27.MaterialThickness
    // MARK: - endif

    public enum MaterialThickness: String, CaseIterable, Hashable {
        case ultraThin = "Ultra Thin",
             thin = "Thin",
             regular = "Regular",
             thick = "Thick",
             chrome = "Chrome"
    }
}

extension MaterialThickness_V28.MaterialThickness: StitchVersionedCodable {
    public init(previousInstance: MaterialThickness_V28.PreviousInstance) {
        switch previousInstance {
        case .ultraThin: self = .ultraThin
        case .thin: self = .thin
        case .regular: self = .regular
        case .thick: self = .thick
        case .chrome: self = .chrome
        }
    }
}