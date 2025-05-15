//
//  ShapeCoordinates_V31.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum ShapeCoordinates_V31: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V31
    public typealias PreviousInstance = ShapeCoordinates_V30.ShapeCoordinates
    // MARK: - endif
 
    public enum ShapeCoordinates: String, Equatable, CaseIterable, Hashable {
        case relative = "Relative"
        case absolute = "Absolute"
    }
}

extension ShapeCoordinates_V31.ShapeCoordinates: StitchVersionedCodable {
    public init(previousInstance: ShapeCoordinates_V31.PreviousInstance) {
        switch previousInstance {
            
        case .relative:
            self = .relative
        case .absolute:
            self = .absolute
        }
    }
}
