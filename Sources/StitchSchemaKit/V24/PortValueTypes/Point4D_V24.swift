//
//  Point4D_V24.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum Point4D_V24: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V24
    public typealias PreviousInstance = Point4D_V23.Point4D
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

extension Point4D_V24.Point4D: StitchVersionedCodable {
    public init(previousInstance: Point4D_V24.PreviousInstance) {
        self.init(x: previousInstance.x, y: previousInstance.y, z: previousInstance.z, w: previousInstance.w)
    }
}
