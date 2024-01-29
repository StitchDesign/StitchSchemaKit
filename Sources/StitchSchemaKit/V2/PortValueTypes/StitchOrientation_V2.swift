//
//  StitchOrientation_V2.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum StitchOrientation_V2: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V2
    public typealias PreviousInstance = StitchOrientation_V1.StitchOrientation
    // MARK: - endif
    
    // Used for VStack vs HStack on layer groups
    public enum StitchOrientation: String, CaseIterable {
        case none, horizontal, vertical
    }

}

extension StitchOrientation_V2.StitchOrientation: StitchVersionedCodable {
    public init(previousInstance: StitchOrientation_V2.PreviousInstance) {
        switch previousInstance {
            
        case .none:
            self = .none
        case .horizontal:
            self = .horizontal
        case .vertical:
            self = .vertical
        }
    }
}
