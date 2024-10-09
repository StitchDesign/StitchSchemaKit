//
//  JSONShapeCommand_V24.swift
//
//
//  Created by Nicholas Arner on 1/26/24.
//

import Foundation

public enum JSONShapeCommand_V24: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V24
    public typealias PreviousInstance = JSONShapeCommand_V23.JSONShapeCommand
    public typealias JSONCurveTo = JSONCurveTo_V24.JSONCurveTo
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

extension JSONShapeCommand_V24.JSONShapeCommand {
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

extension Array where Element == JSONShapeCommand_V24.JSONShapeCommand {
    public func getPoints() -> [CGPoint] {
        self.map { $0.point }
    }
}

extension JSONShapeCommand_V24.JSONShapeCommand: StitchVersionedCodable {
    public init(previousInstance: JSONShapeCommand_V24.PreviousInstance) {
        switch previousInstance {
            
        case .closePath:
            self = .closePath
        case .moveTo(let value):
            self = .moveTo(value)
        case .lineTo(let value):
            self = .lineTo(value)
        case .curveTo(let value):
            self = .curveTo(JSONShapeCommand_V24.JSONCurveTo(previousInstance: value))
        }
    }
}