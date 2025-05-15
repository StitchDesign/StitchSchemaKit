//
//  LayerTextVerticalAlignment_V31.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum LayerTextVerticalAlignment_V31: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V31
    public typealias PreviousInstance = LayerTextVerticalAlignment_V30.LayerTextVerticalAlignment
    
    // MARK: - endif

    // Vertical alignment options for our Text Layers in preview window
    public enum LayerTextVerticalAlignment: String, CaseIterable, Hashable {
        case top, center, bottom
    }

}

extension LayerTextVerticalAlignment_V31.LayerTextVerticalAlignment: StitchVersionedCodable {
    public init(previousInstance: LayerTextVerticalAlignment_V31.PreviousInstance) {
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
