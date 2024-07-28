//
//  CameraSettings_V22.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum CameraSettings_V22: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V22
    public typealias PreviousInstance = CameraSettings_V21.CameraSettings
    public typealias CameraDirection = CameraDirection_V22.CameraDirection
    public typealias StitchCameraOrientation = StitchCameraOrientation_V22.StitchCameraOrientation

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

extension CameraSettings_V22.CameraSettings: StitchVersionedCodable {
    public init(previousInstance: CameraSettings_V22.PreviousInstance) {
        self.init(direction:
                    CameraSettings_V22.CameraDirection(previousInstance: previousInstance.direction),
                  orientation:
                    CameraSettings_V22.StitchCameraOrientation(previousInstance: previousInstance.orientation))
    }
}
