//
//  CameraSettings_V8.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum CameraSettings_V8: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V8
    public typealias PreviousInstance = CameraSettings_V7.CameraSettings
    public typealias CameraDirection = CameraDirection_V8.CameraDirection
    public typealias StitchCameraOrientation = StitchCameraOrientation_V8.StitchCameraOrientation

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

extension CameraSettings_V8.CameraSettings: StitchVersionedCodable {
    public init(previousInstance: CameraSettings_V8.PreviousInstance) {
        self.init(direction:
                    CameraSettings_V8.CameraDirection(previousInstance: previousInstance.direction),
                  orientation:
                    CameraSettings_V8.StitchCameraOrientation(previousInstance: previousInstance.orientation))
    }
}
