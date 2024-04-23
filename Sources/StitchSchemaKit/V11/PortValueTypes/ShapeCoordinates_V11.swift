//
//  ShapeCoordinates_V11.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum ShapeCoordinates_V11: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V11
    public typealias PreviousInstance = ShapeCoordinates_V10.ShapeCoordinates
    // MARK: - endif
 
    public enum ShapeCoordinates: String, Equatable, CaseIterable {
        case relative = "Relative"
        case absolute = "Absolute"
    }
}

extension ShapeCoordinates_V11.ShapeCoordinates: StitchVersionedCodable {
    public init(previousInstance: ShapeCoordinates_V11.PreviousInstance) {
        switch previousInstance {
            
        case .relative:
            self = .relative
        case .absolute:
            self = .absolute
        }
    }
}
