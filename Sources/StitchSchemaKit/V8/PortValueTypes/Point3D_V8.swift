//
//  Point3D_V8.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum Point3D_V8: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V8
    public typealias PreviousInstance = Point3D_V7.Point3D
    // MARK: - endif
    

    public struct Point3D: Equatable {
        public var x: Double
        public var y: Double
        public var z: Double
        
        public init(x: Double, y: Double, z: Double) {
            self.x = x
            self.y = y
            self.z = z
        }
    }
}

extension Point3D_V8.Point3D: StitchVersionedCodable {
    public init(previousInstance: Point3D_V8.PreviousInstance) {
        self.init(x: previousInstance.x, y: previousInstance.y, z: previousInstance.z)
    }
}
