//
//  LayerTextAlignment_V1.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum LayerTextAlignment_V1: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V1
    public typealias PreviousInstance = LayerTextAlignment_V1.LayerTextAlignment
    // MARK: - endif

    public enum LayerTextAlignment: String, CaseIterable {
        case left, center, right, justify
    }

}

extension LayerTextAlignment_V1.LayerTextAlignment: StitchVersionedCodable {
    public init(previousInstance: LayerTextAlignment_V1.PreviousInstance) {
        fatalError()
    }
}
