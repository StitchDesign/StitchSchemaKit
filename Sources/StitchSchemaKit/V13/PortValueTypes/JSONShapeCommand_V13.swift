//
//  JSONShapeCommand_V13.swift
//
//
//  Created by Nicholas Arner on 1/26/24.
//

import Foundation

public enum JSONShapeCommand_V13: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V13
    public typealias PreviousInstance = JSONShapeCommand_V12.JSONShapeCommand
    public typealias JSONCurveTo = JSONCurveTo_V13.JSONCurveTo
    // MARK: - endif
 

    // NOTE: The points inside have already been multiplied
    // by the JsonToShape node's coordinate-space input.

    // TODO: other Shapes like `RoundedRectangle` and `Oval` can be described via JSONShapeCommands too

    // TODO: migrate e.g. `JSONShapeCommand.moveTo(CGPoint)` etc. to  `JSONShapeCommand.moveTo(JSONMoveTo)`
    public enum JSONShapeCommand: Equatable, Hashable {
        case closePath
        case moveTo(CGPoint)
        case lineTo(CGPoint)
        case curveTo(JSONCurveTo)
    }

}

extension JSONShapeCommand_V13.JSONShapeCommand: StitchVersionedCodable {
    public init(previousInstance: JSONShapeCommand_V13.PreviousInstance) {
        switch previousInstance {
            
        case .closePath:
            self = .closePath
        case .moveTo(let value):
            self = .moveTo(value)
        case .lineTo(let value):
            self = .lineTo(value)
        case .curveTo(let value):
            self = .curveTo(JSONShapeCommand_V13.JSONCurveTo(previousInstance: value))
        }
    }
}
