//
//  JSONShapeCommand_V23.swift
//
//
//  Created by Nicholas Arner on 1/26/24.
//

import Foundation

public enum JSONShapeCommand_V23: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V23
    
    // TODO: fix after version 23
    public typealias PreviousInstance = JSONShapeCommand_V1.JSONShapeCommand
    public typealias JSONCurveTo = JSONCurveTo_V23.JSONCurveTo
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

extension JSONShapeCommand_V23.JSONShapeCommand {
    public var point: CGPoint {
        switch self {
        // TODO: handle this case properly?
        case .closePath:
            return .zero
        case .moveTo(let cgPoint):
            return cgPoint
        case .lineTo(let cgPoint):
            return cgPoint
        case .curveTo(let jsonCurveTo):
            return jsonCurveTo.point
        }
    }
}

extension Array where Element == JSONShapeCommand_V23.JSONShapeCommand {
    public func getPoints() -> [CGPoint] {
        self.map { $0.point }
    }
}

extension JSONShapeCommand_V23.JSONShapeCommand: StitchVersionedCodable {
    public init(previousInstance: JSONShapeCommand_V23.PreviousInstance) {
        switch previousInstance {
            
        case .closePath:
            self = .closePath
        case .moveTo(let value):
            self = .moveTo(value)
        case .lineTo(let value):
            self = .lineTo(value)
        case .curveTo(let value):
            self = .curveTo(JSONShapeCommand_V23.JSONCurveTo(previousInstance: value))
        }
    }
}
