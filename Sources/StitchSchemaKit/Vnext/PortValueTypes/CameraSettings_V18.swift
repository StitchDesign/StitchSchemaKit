//
//  CameraSettings_V18.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum CameraSettings_V18: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V18
    public typealias PreviousInstance = CameraSettings_V17.CameraSettings
    public typealias CameraDirection = CameraDirection_V18.CameraDirection
    public typealias StitchCameraOrientation = StitchCameraOrientation_V18.StitchCameraOrientation

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

extension CameraSettings_V18.CameraSettings: StitchVersionedCodable {
    public init(previousInstance: CameraSettings_V18.PreviousInstance) {
        self.init(direction:
                    CameraSettings_V18.CameraDirection(previousInstance: previousInstance.direction),
                  orientation:
                    CameraSettings_V18.StitchCameraOrientation(previousInstance: previousInstance.orientation))
    }
}
