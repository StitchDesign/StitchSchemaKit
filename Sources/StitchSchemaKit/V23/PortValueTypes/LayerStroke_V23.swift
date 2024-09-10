//
//  LayerStroke_V23.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum LayerStroke_V23: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V23
    public typealias PreviousInstance = LayerStroke_V22.LayerStroke
    // MARK: - endif
    
    public enum LayerStroke: String, Codable, CaseIterable {
        case none, inside, outside
    }
}

extension LayerStroke_V23.LayerStroke: StitchVersionedCodable {
    public init(previousInstance: LayerStroke_V23.PreviousInstance) {
        switch previousInstance {
            
        case .none:
            self = .none
        case .inside:
            self = .inside
        case .outside:
            self = .outside
        }
    }
}
