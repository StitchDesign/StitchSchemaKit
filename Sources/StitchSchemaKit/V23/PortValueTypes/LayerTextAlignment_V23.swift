//
//  LayerTextAlignment_V23.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum LayerTextAlignment_V23: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V23
    public typealias PreviousInstance = LayerTextAlignment_V22.LayerTextAlignment
    // MARK: - endif

    public enum LayerTextAlignment: String, CaseIterable {
        case left, center, right, justify
    }

}

extension LayerTextAlignment_V23.LayerTextAlignment: StitchVersionedCodable {
    public init(previousInstance: LayerTextAlignment_V23.PreviousInstance) {
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
