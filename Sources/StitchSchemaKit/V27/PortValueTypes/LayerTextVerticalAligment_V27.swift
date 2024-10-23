//
//  LayerTextVerticalAlignment_V27.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum LayerTextVerticalAlignment_V27: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V27
    public typealias PreviousInstance = LayerTextVerticalAlignment_V26.LayerTextVerticalAlignment
    
    // MARK: - endif

    // Vertical alignment options for our Text Layers in preview window
    public enum LayerTextVerticalAlignment: String, CaseIterable, Hashable {
        case top, center, bottom
    }

}

extension LayerTextVerticalAlignment_V27.LayerTextVerticalAlignment: StitchVersionedCodable {
    public init(previousInstance: LayerTextVerticalAlignment_V27.PreviousInstance) {
        switch previousInstance {
            
        case .top:
            self = .top
        case .center:
            self = .center
        case .bottom:
            self = .bottom
        }
    }
}
