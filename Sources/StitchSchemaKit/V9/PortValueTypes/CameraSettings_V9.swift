//
//  CameraSettings_V9.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum CameraSettings_V9: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V9
    public typealias PreviousInstance = CameraSettings_V8.CameraSettings
    public typealias CameraDirection = CameraDirection_V9.CameraDirection
    public typealias StitchCameraOrientation = StitchCameraOrientation_V9.StitchCameraOrientation

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

extension CameraSettings_V9.CameraSettings: StitchVersionedCodable {
    public init(previousInstance: CameraSettings_V9.PreviousInstance) {
        self.init(direction:
                    CameraSettings_V9.CameraDirection(previousInstance: previousInstance.direction),
                  orientation:
                    CameraSettings_V9.StitchCameraOrientation(previousInstance: previousInstance.orientation))
    }
}
