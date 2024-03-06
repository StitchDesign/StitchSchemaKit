//
//  InteractionType_V3.swift
//
//
//  Created by Nicholas Arner on 1/27/24.
//

import Foundation


public enum InteractionType_V3: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V3
    public typealias PreviousInstance = InteractionType_V1.InteractionType
    // MARK: - endif
 

    public enum InteractionType: String, Equatable {
        case drag, press, scroll
    }

}

extension InteractionType_V3.InteractionType: StitchVersionedCodable {
    public init(previousInstance: InteractionType_V3.PreviousInstance) {
        switch previousInstance {
            
        case .drag:
            self = .drag
        case .press:
            self = .press
        case .scroll:
            self = .scroll
        }
    }
}
