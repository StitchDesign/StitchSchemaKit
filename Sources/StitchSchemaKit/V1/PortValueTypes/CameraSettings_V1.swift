//
//  CameraSettings_V1.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum CameraSettings_V1: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V1
    public typealias PreviousInstance = Self.CameraSettings
    public typealias CameraDirection = CameraDirection_V1.CameraDirection
    public typealias StitchCameraOrientation = StitchCameraOrientation_V1.StitchCameraOrientation

    // MARK: - endif
    
    // Used for VStack vs HStack on layer groups
    public struct CameraSettings: Equatable, Hashable {
        public var direction: CameraDirection = .front
        public var orientation: StitchCameraOrientation
        
        public init(direction: CameraDirection = .front,
         orientation: StitchCameraOrientation = .defaultCameraOrientation) {
            self.direction = direction
            self.orientation = orientation
        }
    }
}

extension CameraSettings_V1.CameraSettings: StitchVersionedCodable {
    public init(previousInstance: CameraSettings_V1.PreviousInstance) {
        fatalError()
    }
}
