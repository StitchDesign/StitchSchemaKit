//
//  ShapeCommand_V15.swift
//
//
//  Created by Nicholas Arner on 1/26/24.
//

import Foundation


public enum ShapeCommand_V15: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V15
    public typealias PreviousInstance = ShapeCommand_V14.ShapeCommand
    public typealias PathPoint = PathPoint_V1.PathPoint
    // MARK: - endif
 

    public enum ShapeCommand: Equatable, Hashable {
        case closePath,
             lineTo(point: PathPoint),
             moveTo(point: PathPoint),
             curveTo(curveFrom: PathPoint,
                     point: PathPoint,
                     curveTo: PathPoint)
    }

}

extension ShapeCommand_V15.ShapeCommand: StitchVersionedCodable {
    public init(previousInstance: ShapeCommand_V15.PreviousInstance) {
        switch previousInstance {
        case .closePath:
            self = .closePath
        case .lineTo(point: let point):
            self = .lineTo(point: point)
        case .moveTo(point: let point):
            self = .moveTo(point: point)
        case .curveTo(curveFrom: let curveFrom,
                      point: let point,
                      curveTo: let curveTo):
            self = .curveTo(curveFrom: curveFrom,
                            point: point,
                            curveTo: curveTo)
        }
    }
}

extension ShapeCommand_V15.ShapeCommand: Codable {
    enum CodingKeys: String, CodingKey {
        case type, point,
             // added for curveTo case
             curveFrom, curveTo
    }

    enum CommandType: String, Decodable {
        case closePath, lineTo, moveTo, curveTo
    }

    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)

        // the `type` key, whether it's "lineTo" or "moveTo"
        let type = try container.decode(CommandType.self, forKey: .type)

        switch type {

        case .closePath:
            self = .closePath

        case .lineTo:
            let point = try container.decode(PathPoint_V1.PathPoint.self, forKey: .point)
            self = .lineTo(point: point)

        case .moveTo:
            let point = try container.decode(PathPoint_V1.PathPoint.self, forKey: .point)
            self = .moveTo(point: point)

        case .curveTo:
            let point = try container.decode(PathPoint_V1.PathPoint.self, forKey: .point)
            // .curveTo case means we have type, point AND curveFrom, and curveTo keys
            let curveFrom = try container.decode(PathPoint_V1.PathPoint.self, forKey: .curveFrom)
            let curveTo = try container.decode(PathPoint_V1.PathPoint.self, forKey: .curveTo)

            self = .curveTo(curveFrom: curveFrom,
                            point: point,
                            curveTo: curveTo)
        }

    }

    // Note: we encode a key-value pair (e.g. "type: moveTo")
    // which we don't actually use in the enum.
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)

        switch self {
        case .closePath:
            try container.encode(JSONShapeKeys.CLOSE_PATH, forKey: .type)
        case .moveTo(let point):
            try container.encode(JSONShapeKeys.MOVE_TO, forKey: .type)
            try container.encode(point, forKey: .point)
        case .lineTo(let point):
            try container.encode(JSONShapeKeys.LINE_TO, forKey: .type)
            try container.encode(point, forKey: .point)
        case .curveTo(let curveFrom, let point, let curveTo):
            try container.encode(JSONShapeKeys.CURVE_TO, forKey: .type)
            try container.encode(point, forKey: .point)
            try container.encode(curveFrom, forKey: .curveFrom)
            try container.encode(curveTo, forKey: .curveTo)
        }
    }
}
