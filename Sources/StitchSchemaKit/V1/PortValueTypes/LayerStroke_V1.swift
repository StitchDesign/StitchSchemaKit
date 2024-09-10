//
//  LayerStroke_V1.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum LayerStroke_V1: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V1
    public typealias PreviousInstance = Self.LayerStroke
    // MARK: - endif
    
    public enum LayerStroke: String, Codable, CaseIterable {
        case none, inside, outside
    }
}

extension LayerStroke_V1.LayerStroke: StitchVersionedCodable {
    public init(previousInstance: LayerStroke_V1.PreviousInstance) {
        fatalError()
    }
}
