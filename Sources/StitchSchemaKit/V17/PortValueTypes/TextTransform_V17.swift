//
//  TextTransform_V17.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum TextTransform_V17: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V17
    public typealias PreviousInstance = TextTransform_V16.TextTransform
    // MARK: - endif
  
    public enum TextTransform: String, CaseIterable {
        case uppercase, lowercase, capitalize
    }

}

extension TextTransform_V17.TextTransform: StitchVersionedCodable {
    public init(previousInstance: TextTransform_V17.PreviousInstance) {
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

