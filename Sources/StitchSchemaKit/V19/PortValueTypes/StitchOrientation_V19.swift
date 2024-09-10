//
//  StitchOrientation_V19.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum StitchOrientation_V19: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V19
    public typealias PreviousInstance = StitchOrientation_V18.StitchOrientation
    // MARK: - endif
    
    // Used for VStack vs HStack on layer groups
    public enum StitchOrientation: String, CaseIterable {
        case none, horizontal, vertical, grid
    }

}

extension StitchOrientation_V19.StitchOrientation: StitchVersionedCodable {
    public init(previousInstance: StitchOrientation_V19.PreviousInstance) {
        switch previousInstance {
            
        case .none:
            self = .none
        case .horizontal:
            self = .horizontal
        case .vertical:
            self = .vertical
        case .grid:
            self = .grid
        }
    }
}
