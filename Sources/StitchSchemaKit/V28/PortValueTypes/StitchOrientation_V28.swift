//
//  StitchOrientation_V28.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum StitchOrientation_V28: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V28
    public typealias PreviousInstance = StitchOrientation_V27.StitchOrientation
    // MARK: - endif
    
    // Used for VStack vs HStack on layer groups
    public enum StitchOrientation: String, CaseIterable, Hashable {
        case none, horizontal, vertical, grid
    }

}

extension StitchOrientation_V28.StitchOrientation: StitchVersionedCodable {
    public init(previousInstance: StitchOrientation_V28.PreviousInstance) {
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
