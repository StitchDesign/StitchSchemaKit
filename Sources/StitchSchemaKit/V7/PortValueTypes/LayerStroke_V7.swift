//
//  LayerStroke_V7.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum LayerStroke_V7: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V7
    public typealias PreviousInstance = LayerStroke_V6.LayerStroke
    // MARK: - endif
    
    public enum LayerStroke: String, Codable, CaseIterable {
        case none, inside, outside
    }
}

extension LayerStroke_V7.LayerStroke: StitchVersionedCodable {
    public init(previousInstance: LayerStroke_V7.PreviousInstance) {
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
