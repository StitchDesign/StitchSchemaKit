//
//  TextTransform_V32.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum TextTransform_V32: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V32
    public typealias PreviousInstance = TextTransform_V31.TextTransform
    // MARK: - endif
  
    public enum TextTransform: String, CaseIterable, Hashable {
        case uppercase, lowercase, capitalize
    }

}

extension TextTransform_V32.TextTransform: StitchVersionedCodable {
    public init(previousInstance: TextTransform_V32.PreviousInstance) {
        switch previousInstance {
            
        case .uppercase:
            self = .uppercase
        case .lowercase:
            self = .lowercase
        case .capitalize:
            self = .capitalize
        }
    }
}

