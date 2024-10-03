//
//  CameraSettings_V24.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum CameraSettings_V24: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V24
    public typealias PreviousInstance = CameraSettings_V23.CameraSettings
    public typealias CameraDirection = CameraDirection_V24.CameraDirection
    public typealias StitchCameraOrientation = StitchCameraOrientation_V24.StitchCameraOrientation

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

extension CameraSettings_V24.CameraSettings: StitchVersionedCodable {
    public init(previousInstance: CameraSettings_V24.PreviousInstance) {
        self.init(direction:
                    CameraSettings_V24.CameraDirection(previousInstance: previousInstance.direction),
                  orientation:
                    CameraSettings_V24.StitchCameraOrientation(previousInstance: previousInstance.orientation))
    }
}
