//
//  ShapeCommandType_V19.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum ShapeCommandType_V19: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V19
    public typealias PreviousInstance = ShapeCommandType_V18.ShapeCommandType
    // MARK: - endif
 
    public enum ShapeCommandType: String, Equatable, Hashable, CaseIterable {
        case closePath, lineTo, moveTo, curveTo
    }

}

extension ShapeCommandType_V19.ShapeCommandType: StitchVersionedCodable {
    public init(previousInstance: ShapeCommandType_V19.PreviousInstance) {
        switch previousInstance {
            
        case .closePath:
            self = .closePath
        case .lineTo:
            self = .lineTo
        case .moveTo:
            self = .moveTo
        case .curveTo:
            self = .curveTo
        }
    }
}
