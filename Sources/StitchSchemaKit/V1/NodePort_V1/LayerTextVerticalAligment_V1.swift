//
//  LayerTextVerticalAligment_V1.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum LayerTextVerticalAligment_V1: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V1
    public typealias PreviousInstance = Self.LayerTextVerticalAligment
    // MARK: - endif

    // Vertical alignment options for our Text Layers in preview window
    public enum LayerTextVerticalAligment: String, CaseIterable {
        case top, center, bottom
    }

}

extension LayerTextVerticalAligment_V1.LayerTextVerticalAligment: StitchVersionedCodable {
    public init(previousInstance: LayerTextVerticalAligment_V1.PreviousInstance) {
        fatalError()
    }
}
