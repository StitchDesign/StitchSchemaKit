//
//  Point3D_V31.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum Point3D_V31: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V31
    public typealias PreviousInstance = Point3D_V30.Point3D
    // MARK: - endif
    

    public struct Point3D: Hashable {
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

extension Point3D_V31.Point3D: StitchVersionedCodable {
    public init(previousInstance: Point3D_V31.PreviousInstance) {
        self.init(x: previousInstance.x, y: previousInstance.y, z: previousInstance.z)
    }
}
