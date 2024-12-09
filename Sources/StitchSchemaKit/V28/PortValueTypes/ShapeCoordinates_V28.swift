//
//  ShapeCoordinates_V28.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum ShapeCoordinates_V28: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V28
    public typealias PreviousInstance = ShapeCoordinates_V27.ShapeCoordinates
    // MARK: - endif
 
    public enum ShapeCoordinates: String, Equatable, CaseIterable, Hashable {
        case relative = "Relative"
        case absolute = "Absolute"
    }
}

extension ShapeCoordinates_V28.ShapeCoordinates: StitchVersionedCodable {
    public init(previousInstance: ShapeCoordinates_V28.PreviousInstance) {
        switch previousInstance {
            
        case .relative:
            self = .relative
        case .absolute:
            self = .absolute
        }
    }
}
