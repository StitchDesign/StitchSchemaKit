//
//  ShapeAndRect_V13.swift
//  
//
//  Created by Nicholas Arner on 1/26/24.
//

import Foundation


public enum ShapeAndRect_V13: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V13
    public typealias PreviousInstance = ShapeAndRect_V12.ShapeAndRect
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
}

extension ShapeAndRect_V13.ShapeAndRect: StitchVersionedCodable {
    public init(previousInstance: ShapeAndRect_V13.PreviousInstance) {
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
