//
//  TextTransform_V11.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum TextTransform_V11: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V11
    public typealias PreviousInstance = TextTransform_V10.TextTransform
    // MARK: - endif
  
    public enum TextTransform: String, CaseIterable {
        case uppercase, lowercase, capitalize
    }

}

extension TextTransform_V11.TextTransform: StitchVersionedCodable {
    public init(previousInstance: TextTransform_V11.PreviousInstance) {
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

