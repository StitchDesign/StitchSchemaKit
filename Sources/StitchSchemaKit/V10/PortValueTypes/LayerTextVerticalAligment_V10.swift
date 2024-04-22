//
//  LayerTextVerticalAlignment_V10.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum LayerTextVerticalAlignment_V10: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V10
    public typealias PreviousInstance = LayerTextVerticalAlignment_V8.LayerTextVerticalAlignment
    
    // MARK: - endif

    // Vertical alignment options for our Text Layers in preview window
    public enum LayerTextVerticalAlignment: String, CaseIterable {
        case top, center, bottom
    }

}

extension LayerTextVerticalAlignment_V10.LayerTextVerticalAlignment: StitchVersionedCodable {
    public init(previousInstance: LayerTextVerticalAlignment_V10.PreviousInstance) {
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
