//
//  CameraSettings_V7.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum CameraSettings_V7: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V7
    public typealias PreviousInstance = CameraSettings_V6.CameraSettings
    public typealias CameraDirection = CameraDirection_V7.CameraDirection
    public typealias StitchCameraOrientation = StitchCameraOrientation_V7.StitchCameraOrientation

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

extension CameraSettings_V7.CameraSettings: StitchVersionedCodable {
    public init(previousInstance: CameraSettings_V7.PreviousInstance) {
        self.init(direction:
                    CameraSettings_V7.CameraDirection(previousInstance: previousInstance.direction),
                  orientation:
                    CameraSettings_V7.StitchCameraOrientation(previousInstance: previousInstance.orientation))
    }
}
