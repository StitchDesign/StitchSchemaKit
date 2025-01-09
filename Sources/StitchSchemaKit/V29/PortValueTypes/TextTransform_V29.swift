//
//  TextTransform_V29.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum TextTransform_V29: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V29
    public typealias PreviousInstance = TextTransform_V28.TextTransform
    // MARK: - endif
  
    public enum TextTransform: String, CaseIterable, Hashable {
        case uppercase, lowercase, capitalize
    }

}

extension TextTransform_V29.TextTransform: StitchVersionedCodable {
    public init(previousInstance: TextTransform_V29.PreviousInstance) {
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

