//
//  ShapeCommandType_V12.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum ShapeCommandType_V12: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V12
    public typealias PreviousInstance = ShapeCommandType_V10.ShapeCommandType
    // MARK: - endif
 
    public enum ShapeCommandType: String, Equatable, Hashable, CaseIterable {
        case closePath, lineTo, moveTo, curveTo
    }

}

extension ShapeCommandType_V12.ShapeCommandType: StitchVersionedCodable {
    public init(previousInstance: ShapeCommandType_V12.PreviousInstance) {
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
