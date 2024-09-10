//
//  JSONShapeKeys_V16.swift
//
//
//  Created by Nicholas Arner on 1/26/24.
//

import Foundation

public enum JSONShapeKeys_V17: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V17
    public typealias PreviousInstance = JSONShapeKeys_V16.JSONShapeKeys
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

extension JSONShapeKeys_V17.JSONShapeKeys: StitchVersionedCodable {
    public init(previousInstance: JSONShapeKeys_V17.PreviousInstance) {
        fatalError()
    }
}
