//
//  ExpansionDirection_V27.swift
//
//
//  Created by Nicholas Arner on 1/27/24.
//

import Foundation


public enum ExpansionDirection_V27: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V27
    public typealias PreviousInstance = ExpansionDirection_V26.ExpansionDirection
    // MARK: - endif
 

    // not just the size of the box,
    // but from where the box goes to etc.
    public enum ExpansionDirection: Equatable, Hashable {
        case topLeft, topRight,
             bottomLeft, bottomRight,
             none
    }

}

extension ExpansionDirection_V27.ExpansionDirection: StitchVersionedCodable {
    public init(previousInstance: ExpansionDirection_V27.PreviousInstance) {
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
