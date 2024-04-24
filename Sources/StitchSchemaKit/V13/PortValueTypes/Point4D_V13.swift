//
//  Point4D_V13.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum Point4D_V13: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V13
    public typealias PreviousInstance = Point4D_V12.Point4D
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

extension Point4D_V13.Point4D: StitchVersionedCodable {
    public init(previousInstance: Point4D_V13.PreviousInstance) {
        self.init(x: previousInstance.x, y: previousInstance.y, z: previousInstance.z, w: previousInstance.w)
    }
}
