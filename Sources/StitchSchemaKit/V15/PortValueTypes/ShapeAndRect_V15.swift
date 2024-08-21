//
//  ShapeAndRect_V15.swift
//  
//
//  Created by Nicholas Arner on 1/26/24.
//

import Foundation


public enum ShapeAndRect_V15: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V15
    public typealias PreviousInstance = ShapeAndRect_V14.ShapeAndRect
    public typealias RoundedRectangleData = RoundedRectangleData_V1.RoundedRectangleData
    public typealias TriangleData = TriangleData_V1.TriangleData
    public typealias JSONShapeCommands = [JSONShapeCommand_V1.JSONShapeCommand]
    // MARK: - endif
 
    public enum ShapeAndRect: Equatable {
        case oval(CGRect),
             circle(CGRect),
             rectangle(RoundedRectangleData),
             triangle(TriangleData),
             // more like "path", since was created from a path json
             custom(JSONShapeCommands)
    }

    public var rect: CGRect {
        switch self {
        case .oval(let x):
            return x
        case .circle(let x):
            return x
        case .rectangle(let x):
            return x.rect
            
            // self.rect not really used in most case
        case .triangle(let trianglePoints):
            // Assuming `.p1` is the proper origin here:
            return .init(
                origin: trianglePoints.p1,
                size: .init(width: abs(trianglePoints.points.boundingBoxWidth),
                            height: abs(trianglePoints.points.boundingBoxHeight)))
            
        case .custom(let commands):
            return .init(
                // .first not accurate for e.g. the curveTo ?
                // also, this is ALL points for all instructions
                origin: commands.getPoints().first ?? .zero,
                size: .init(width: abs(commands.getPoints().boundingBoxWidth),
                            height: abs(commands.getPoints().boundingBoxHeight)))
        }
    }
    
    // the northern bound for a given shape
    public func north(_ smallestShape: CGRect) -> CGFloat {
        switch self {
        case .triangle(let trianglePoints):
            return trianglePoints.points.mostNegativeY
        case .custom(let jsonShapeCommands):
            return jsonShapeCommands.getPoints().mostNegativeY
        case .oval, .circle, .rectangle:
            return self.rect.yBound(smallestShape.origin.y,
                                    smallestShape.height,
                                    isNorth: true)
        }
    }
    
    public func south(_ smallestShape: CGRect) -> CGFloat {
        switch self {
        case .oval, .circle, .rectangle:
            return self.rect.yBound(smallestShape.origin.y,
                                    smallestShape.height)
        case .triangle(let trianglePoints):
            // double check that south logic is correct
            return trianglePoints.points.mostPostiveY
        case .custom(let jsonShapeCommands):
            return jsonShapeCommands.getPoints().mostPostiveY
        }
    }
    
    public func west(_ smallestShape: CGRect) -> CGFloat {
        switch self {
        case .oval, .circle, .rectangle:
            return self.rect.xBound(smallestShape.origin.x,
                                    smallestShape.width,
                                    isWest: true)
        case .triangle(let trianglePoints):
            return trianglePoints.points.mostNegativeX
        case .custom(let jsonShapeCommands):
            return jsonShapeCommands.getPoints().mostNegativeX
        }
    }
    
    public func east(_ smallestShape: CGRect) -> CGFloat {
        switch self {
        case .oval, .circle, .rectangle:
            return self.rect.xBound(smallestShape.origin.x,
                                    smallestShape.width)
        case .triangle(let trianglePoints):
            // double check that east logic is correct
            return trianglePoints.points.mostPostiveX
        case .custom(let jsonShapeCommands):
            return jsonShapeCommands.getPoints().mostPostiveX
        }
    }

}

extension ShapeAndRect_V15.ShapeAndRect: StitchVersionedCodable {
    public init(previousInstance: ShapeAndRect_V15.PreviousInstance) {
        switch previousInstance {
            
        case .oval(let value):
            self = .oval(value)
        case .circle(let value):
            self = .circle(value)
        case .rectangle(let value):
            self = .rectangle(value)
        case .triangle(let value):
            self = .triangle(value)
        case .custom(let value):
            self = .custom(value)
        }
    }
}
