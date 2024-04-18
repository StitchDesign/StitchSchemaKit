//
//  ExpansionDirection_V8.swift
//
//
//  Created by Nicholas Arner on 1/27/24.
//

import Foundation


public enum ExpansionDirection_V8: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V8
    public typealias PreviousInstance = ExpansionDirection_V7.ExpansionDirection
    // MARK: - endif
 

    // not just the size of the box,
    // but from where the box goes to etc.
    public enum ExpansionDirection: Equatable, Hashable {
        case topLeft, topRight,
             bottomLeft, bottomRight,
             none
    }

}

extension ExpansionDirection_V8.ExpansionDirection: StitchVersionedCodable {
    public init(previousInstance: ExpansionDirection_V8.PreviousInstance) {
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
