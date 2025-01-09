//
//  ExpansionDirection_V29.swift
//
//
//  Created by Nicholas Arner on 1/27/24.
//

import Foundation


public enum ExpansionDirection_V29: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V29
    public typealias PreviousInstance = ExpansionDirection_V28.ExpansionDirection
    // MARK: - endif
 

    // not just the size of the box,
    // but from where the box goes to etc.
    public enum ExpansionDirection: Equatable, Hashable {
        case topLeft, topRight,
             bottomLeft, bottomRight,
             none
    }

}

extension ExpansionDirection_V29.ExpansionDirection: StitchVersionedCodable {
    public init(previousInstance: ExpansionDirection_V29.PreviousInstance) {
        switch previousInstance {
            
        case .topLeft:
            self = .topLeft
        case .topRight:
            self = .topRight
        case .bottomLeft:
            self = .bottomLeft
        case .bottomRight:
            self = .bottomRight
        case .none:
            self = .none
        }
    }
}
