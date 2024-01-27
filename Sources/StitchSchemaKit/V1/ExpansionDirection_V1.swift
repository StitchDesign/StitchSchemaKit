//
//  ExpansionDirection_V1.swift
//
//
//  Created by Nicholas Arner on 1/27/24.
//

import Foundation


public enum ExpansionDirection_V1: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V1
    public typealias PreviousInstance = Self.ExpansionDirection
    // MARK: - endif
 

    // not just the size of the box,
    // but from where the box goes to etc.
    public enum ExpansionDirection: Codable, Equatable, Hashable {
        case topLeft, topRight,
             bottomLeft, bottomRight,
             none
    }

}

extension ExpansionDirection_V1.ExpansionDirection: StitchVersionedCodable {
    public init(previousInstance: ExpansionDirection_V1.PreviousInstance) {
        fatalError()
    }
}
