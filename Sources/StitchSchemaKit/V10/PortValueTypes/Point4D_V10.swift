//
//  Point4D_V9.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum Point4D_V9: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V9
    public typealias PreviousInstance = Point4D_V8.Point4D
    // MARK: - endif
    

    public struct Point4D: Equatable {
        public var x: Double
        public var y: Double
        public var z: Double
        public var w: Double
        
        public init(x: Double, y: Double, z: Double, w: Double) {
            self.x = x
            self.y = y
            self.z = z
            self.w = w
        }
    }

}

extension Point4D_V9.Point4D: StitchVersionedCodable {
    public init(previousInstance: Point4D_V9.PreviousInstance) {
        self.init(x: previousInstance.x, y: previousInstance.y, z: previousInstance.z, w: previousInstance.w)
    }
}
