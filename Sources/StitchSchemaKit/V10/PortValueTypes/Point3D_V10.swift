//
//  Point3D_V10.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum Point3D_V10: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V10
    public typealias PreviousInstance = Point3D_V9.Point3D
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

extension Point3D_V10.Point3D: StitchVersionedCodable {
    public init(previousInstance: Point3D_V10.PreviousInstance) {
        self.init(x: previousInstance.x, y: previousInstance.y, z: previousInstance.z)
    }
}
