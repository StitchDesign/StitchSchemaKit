//
//  InteractionType_V1.swift
//
//
//  Created by Nicholas Arner on 1/27/24.
//

import Foundation


public enum InteractionType_V1: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V1
    public typealias PreviousInstance = Self.InteractionType
    // MARK: - endif
 

    public enum InteractionType: String, Equatable {
        case drag, press, scroll
    }

}

extension InteractionType_V1.InteractionType: StitchVersionedCodable {
    public init(previousInstance: InteractionType_V1.PreviousInstance) {
        fatalError()
    }
}
