//
//  JSONShapeKeys_V1.swift
//
//
//  Created by Nicholas Arner on 1/26/24.
//

import Foundation

public enum JSONShapeKeys_V1: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V1
    public typealias PreviousInstance = Self.JSONShapeKeys
    // MARK: - endif
 
    public struct JSONShapeKeys {
        public static let PATH = "path"
        public static let TYPE = "type"

        public static let POINT = "point"

        public static let CLOSE_PATH = "closePath"
        public static let MOVE_TO = "moveTo"
        public static let LINE_TO = "lineTo"
        public static let CURVE_TO = "curveTo"

        public static let CURVE_FROM = "curveFrom"
    }

}

extension JSONShapeKeys_V1.JSONShapeKeys: StitchVersionedCodable {
    public init(previousInstance: JSONShapeKeys_V1.PreviousInstance) {
        fatalError()
    }
}
