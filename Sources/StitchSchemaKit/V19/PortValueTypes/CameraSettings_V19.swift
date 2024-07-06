//
//  CameraSettings_V19.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum CameraSettings_V19: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V19
    public typealias PreviousInstance = CameraSettings_V18.CameraSettings
    public typealias CameraDirection = CameraDirection_V19.CameraDirection
    public typealias StitchCameraOrientation = StitchCameraOrientation_V19.StitchCameraOrientation

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

extension CameraSettings_V19.CameraSettings: StitchVersionedCodable {
    public init(previousInstance: CameraSettings_V19.PreviousInstance) {
        self.init(direction:
                    CameraSettings_V19.CameraDirection(previousInstance: previousInstance.direction),
                  orientation:
                    CameraSettings_V19.StitchCameraOrientation(previousInstance: previousInstance.orientation))
    }
}
