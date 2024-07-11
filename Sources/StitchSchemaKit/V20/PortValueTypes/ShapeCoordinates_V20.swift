//
//  ShapeCoordinates_V20.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum ShapeCoordinates_V20: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V20
    public typealias PreviousInstance = ShapeCoordinates_V19.ShapeCoordinates
    // MARK: - endif
 
    public enum ShapeCoordinates: String, Equatable, CaseIterable {
        case relative = "Relative"
        case absolute = "Absolute"
    }
}

extension ShapeCoordinates_V20.ShapeCoordinates: StitchVersionedCodable {
    public init(previousInstance: ShapeCoordinates_V20.PreviousInstance) {
        switch previousInstance {
            
        case .relative:
            self = .relative
        case .absolute:
            self = .absolute
        }
    }
}
