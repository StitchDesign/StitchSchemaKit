//
//  File.swift
//  
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum VisualMediaFitStyle_V1: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V1
    public typealias PreviousInstance = Self.Anchoring
    // MARK: - endif
 
    public enum VisualMediaFitStyle: String, CaseIterable, Codable {
        case fit, fill, stretch
    }

}

extension Anchoring_V1.Anchoring: StitchVersionedCodable {
    public init(previousInstance: Anchoring_V1.PreviousInstance) {
        fatalError()
    }
}
