//
//  CameraSettings_V16.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum CameraSettings_V16: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V16
    public typealias PreviousInstance = CameraSettings_V15.CameraSettings
    public typealias CameraDirection = CameraDirection_V16.CameraDirection
    public typealias StitchCameraOrientation = StitchCameraOrientation_V16.StitchCameraOrientation

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

extension CameraSettings_V16.CameraSettings: StitchVersionedCodable {
    public init(previousInstance: CameraSettings_V16.PreviousInstance) {
        self.init(direction:
                    CameraSettings_V16.CameraDirection(previousInstance: previousInstance.direction),
                  orientation:
                    CameraSettings_V16.StitchCameraOrientation(previousInstance: previousInstance.orientation))
    }
}
