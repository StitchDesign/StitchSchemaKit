//
//  ShapeCommand_V1.swift
//
//
//  Created by Nicholas Arner on 1/26/24.
//

import Foundation


public enum ShapeCommand_V1: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V1
    public typealias PreviousInstance = Self.ShapeCommand
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

extension ShapeCommand_V1.ShapeCommand: StitchVersionedCodable {
    public init(previousInstance: VisualMediaFitStyle_V1.PreviousInstance) {
        fatalError()
    }
}
