//
//  TextTransform_V5.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum TextTransform_V5: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V5
    public typealias PreviousInstance = TextTransform_V4.TextTransform
    // MARK: - endif
  
    public enum TextTransform: String, CaseIterable {
        case uppercase, lowercase, capitalize
    }

}

extension TextTransform_V5.TextTransform: StitchVersionedCodable {
    public init(previousInstance: TextTransform_V5.PreviousInstance) {
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

