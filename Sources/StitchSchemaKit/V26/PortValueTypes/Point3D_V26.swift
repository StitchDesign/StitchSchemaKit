//
//  Point3D_V26.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum Point3D_V26: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V26
    public typealias PreviousInstance = Point3D_V25.Point3D
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

extension Point3D_V26.Point3D: StitchVersionedCodable {
    public init(previousInstance: Point3D_V26.PreviousInstance) {
        self.init(x: previousInstance.x, y: previousInstance.y, z: previousInstance.z)
    }
}
