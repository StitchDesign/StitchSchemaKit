//
//  LayerTextAlignment_V32.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum LayerTextAlignment_V32: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V32
    public typealias PreviousInstance = LayerTextAlignment_V31.LayerTextAlignment
    // MARK: - endif

    public enum LayerTextAlignment: String, CaseIterable, Hashable {
        case left, center, right, justify
    }

}

extension LayerTextAlignment_V32.LayerTextAlignment: StitchVersionedCodable {
    public init(previousInstance: LayerTextAlignment_V32.PreviousInstance) {
        switch previousInstance {
            
        case .left:
            self = .left
        case .center:
            self = .center
        case .right:
            self = .right
        case .justify:
            self = .justify
        }
    }
}
