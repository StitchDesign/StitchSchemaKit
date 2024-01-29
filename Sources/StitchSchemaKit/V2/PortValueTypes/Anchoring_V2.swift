//
//  File.swift
//  
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum Anchoring_V2: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V2
    public typealias PreviousInstance = Self.Anchoring
    // MARK: - endif
 
    public enum Anchoring: String, CaseIterable {
        case topLeft, topCenter, topRight,
             centerLeft, center, centerRight,
             bottomLeft, bottomCenter, bottomRight
    }

}

extension Anchoring_V2.Anchoring: StitchVersionedCodable {
    public init(previousInstance: Anchoring_V2.PreviousInstance) {
        fatalError()
    }
}
