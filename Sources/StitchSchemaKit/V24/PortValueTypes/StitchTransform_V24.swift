//
//  StitchTransform_V24.swift
//
//
//  Created by Elliot Boschwitz on 8/19/24.
//

import Foundation

public enum StitchTransform_V24: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V24
    public typealias PreviousInstance = StitchTransform_V23.StitchTransform
    // MARK: - endif
    
    public struct StitchTransform: Codable, Equatable {
        public var positionX: Double
        public var positionY: Double
        public var positionZ: Double
        public var scaleX: Double
        public var scaleY: Double
        public var scaleZ: Double
        public var rotationX: Double
        public var rotationY: Double
        public var rotationZ: Double
        
        public init(positionX: Double = 0, positionY: Double = 0, positionZ: Double = 0, scaleX: Double = 0, scaleY: Double = 0, scaleZ: Double = 0, rotationX: Double = 0, rotationY: Double = 0, rotationZ: Double = 0) {
            self.positionX = positionX
            self.positionY = positionY
            self.positionZ = positionZ
            self.scaleX = scaleX
            self.scaleY = scaleY
            self.scaleZ = scaleZ
            self.rotationX = rotationX
            self.rotationY = rotationY
            self.rotationZ = rotationZ
        }
    }
}

extension StitchTransform_V24.StitchTransform: StitchVersionedCodable {
    // TODO: set migration logic here after version 23
    public init(previousInstance: StitchTransform_V24.PreviousInstance) {
        self = Self.init(positionX: previousInstance.positionX,
                         positionY: previousInstance.positionY,
                         positionZ: previousInstance.positionZ,
                         scaleX: previousInstance.scaleX,
                         scaleY: previousInstance.scaleY,
                         scaleZ: previousInstance.scaleZ,
                         rotationX: previousInstance.rotationX,
                         rotationY: previousInstance.rotationY,
                         rotationZ: previousInstance.rotationZ)
    }
}
