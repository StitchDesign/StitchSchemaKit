//
//  JSONShapeKeys_V6.swift
//
//
//  Created by Nicholas Arner on 1/26/24.
//

import Foundation

public enum JSONShapeKeys_V7: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V7
    public typealias PreviousInstance = JSONShapeKeys_V6.JSONShapeKeys
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

extension JSONShapeKeys_V7.JSONShapeKeys: StitchVersionedCodable {
    public init(previousInstance: JSONShapeKeys_V7.PreviousInstance) {
        fatalError()
    }
}
