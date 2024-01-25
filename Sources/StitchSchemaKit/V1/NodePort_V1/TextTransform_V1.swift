//
//  TextTransform_V1.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum TextTransform_V1: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V1
    public typealias PreviousInstance = Self.TextTransform
    // MARK: - endif
  
    public enum TextTransform: String, Codable, CaseIterable {
        case uppercase, lowercase, capitalize
    }

}

extension TextTransform_V1.TextTransform: StitchVersionedCodable {
    public init(previousInstance: TextTransform_V1.PreviousInstance) {
        fatalError()
    }
}

