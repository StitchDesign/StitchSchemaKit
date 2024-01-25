//
//  File.swift
//  
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum Anchoring_V1: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V1
    public typealias PreviousInstance = Self.Anchoring
    // MARK: - endif
 
    public enum Anchoring: String, CaseIterable {
        case topLeft, topCenter, topRight,
             centerLeft, center, centerRight,
             bottomLeft, bottomCenter, bottomRight
    }

}

extension Anchoring_V1.Anchoring: StitchVersionedCodable {
    public init(previousInstance: Anchoring_V1.PreviousInstance) {
        fatalError()
    }
}
