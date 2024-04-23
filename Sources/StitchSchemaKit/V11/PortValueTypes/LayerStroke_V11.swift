//
//  LayerStroke_V11.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum LayerStroke_V11: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V11
    public typealias PreviousInstance = LayerStroke_V10.LayerStroke
    // MARK: - endif
    
    public enum LayerStroke: String, Codable, CaseIterable {
        case none, inside, outside
    }
}

extension LayerStroke_V11.LayerStroke: StitchVersionedCodable {
    public init(previousInstance: LayerStroke_V11.PreviousInstance) {
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
