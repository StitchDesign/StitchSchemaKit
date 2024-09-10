//
//  LayerStroke_V5.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum LayerStroke_V5: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V5
    public typealias PreviousInstance = LayerStroke_V4.LayerStroke
    // MARK: - endif
    
    public enum LayerStroke: String, Codable, CaseIterable {
        case none, inside, outside
    }
}

extension LayerStroke_V5.LayerStroke: StitchVersionedCodable {
    public init(previousInstance: LayerStroke_V5.PreviousInstance) {
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
