//
//  LayerStroke_V29.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum LayerStroke_V29: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V29
    public typealias PreviousInstance = LayerStroke_V28.LayerStroke
    // MARK: - endif
    
    public enum LayerStroke: String, Codable, CaseIterable, Hashable {
        case none, inside, outside
    }
}

extension LayerStroke_V29.LayerStroke: StitchVersionedCodable {
    public init(previousInstance: LayerStroke_V29.PreviousInstance) {
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
