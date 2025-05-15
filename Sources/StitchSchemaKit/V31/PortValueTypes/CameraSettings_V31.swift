//
//  CameraSettings_V31.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum CameraSettings_V31: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V31
    public typealias PreviousInstance = CameraSettings_V30.CameraSettings
    public typealias CameraDirection = CameraDirection_V31.CameraDirection
    public typealias StitchCameraOrientation = StitchCameraOrientation_V31.StitchCameraOrientation

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

extension CameraSettings_V31.CameraSettings: StitchVersionedCodable {
    public init(previousInstance: CameraSettings_V31.PreviousInstance) {
        self.init(direction:
                    CameraSettings_V31.CameraDirection(previousInstance: previousInstance.direction),
                  orientation:
                    CameraSettings_V31.StitchCameraOrientation(previousInstance: previousInstance.orientation))
    }
}
