//
//  CameraSettings_V12.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum CameraSettings_V12: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V12
    public typealias PreviousInstance = CameraSettings_V11.CameraSettings
    public typealias CameraDirection = CameraDirection_V12.CameraDirection
    public typealias StitchCameraOrientation = StitchCameraOrientation_V12.StitchCameraOrientation

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

extension CameraSettings_V12.CameraSettings: StitchVersionedCodable {
    public init(previousInstance: CameraSettings_V12.PreviousInstance) {
        self.init(direction:
                    CameraSettings_V12.CameraDirection(previousInstance: previousInstance.direction),
                  orientation:
                    CameraSettings_V12.StitchCameraOrientation(previousInstance: previousInstance.orientation))
    }
}
