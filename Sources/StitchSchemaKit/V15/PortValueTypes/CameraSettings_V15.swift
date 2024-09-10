//
//  CameraSettings_V15.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum CameraSettings_V15: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V15
    public typealias PreviousInstance = CameraSettings_V14.CameraSettings
    public typealias CameraDirection = CameraDirection_V15.CameraDirection
    public typealias StitchCameraOrientation = StitchCameraOrientation_V15.StitchCameraOrientation

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

extension CameraSettings_V15.CameraSettings: StitchVersionedCodable {
    public init(previousInstance: CameraSettings_V15.PreviousInstance) {
        self.init(direction:
                    CameraSettings_V15.CameraDirection(previousInstance: previousInstance.direction),
                  orientation:
                    CameraSettings_V15.StitchCameraOrientation(previousInstance: previousInstance.orientation))
    }
}
