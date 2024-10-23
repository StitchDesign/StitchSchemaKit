//
//  LayerStroke_V27.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum LayerStroke_V27: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V27
    public typealias PreviousInstance = LayerStroke_V26.LayerStroke
    // MARK: - endif
    
    public enum LayerStroke: String, Codable, CaseIterable, Hashable {
        case none, inside, outside
    }
}

extension LayerStroke_V27.LayerStroke: StitchVersionedCodable {
    public init(previousInstance: LayerStroke_V27.PreviousInstance) {
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
