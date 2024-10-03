//
//  CameraSettings_V4.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum CameraSettings_V4: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V4
    public typealias PreviousInstance = CameraSettings_V3.CameraSettings
    public typealias CameraDirection = CameraDirection_V4.CameraDirection
    public typealias StitchCameraOrientation = StitchCameraOrientation_V4.StitchCameraOrientation

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

extension CameraSettings_V4.CameraSettings: StitchVersionedCodable {
    public init(previousInstance: CameraSettings_V4.PreviousInstance) {
        self.init(direction:
                    CameraSettings_V4.CameraDirection(previousInstance: previousInstance.direction),
                  orientation:
                    CameraSettings_V4.StitchCameraOrientation(previousInstance: previousInstance.orientation))
    }
}
