//
//  ShapeAndRect_V2.swift
//  
//
//  Created by Nicholas Arner on 1/26/24.
//

import Foundation


public enum ShapeAndRect_V2: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V2
    public typealias PreviousInstance = Self.ShapeAndRect
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

extension ShapeAndRect_V2.ShapeAndRect: StitchVersionedCodable {
    public init(previousInstance: ShapeAndRect_V2.PreviousInstance) {
        fatalError()
    }
}
