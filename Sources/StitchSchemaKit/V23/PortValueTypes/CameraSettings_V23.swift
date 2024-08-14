//
//  CameraSettings_V23.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum CameraSettings_V23: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V23
    public typealias PreviousInstance = CameraSettings_V22.CameraSettings
    public typealias CameraDirection = CameraDirection_V23.CameraDirection
    public typealias StitchCameraOrientation = StitchCameraOrientation_V23.StitchCameraOrientation

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

extension CameraSettings_V23.CameraSettings: StitchVersionedCodable {
    public init(previousInstance: CameraSettings_V23.PreviousInstance) {
        self.init(direction:
                    CameraSettings_V23.CameraDirection(previousInstance: previousInstance.direction),
                  orientation:
                    CameraSettings_V23.StitchCameraOrientation(previousInstance: previousInstance.orientation))
    }
}
