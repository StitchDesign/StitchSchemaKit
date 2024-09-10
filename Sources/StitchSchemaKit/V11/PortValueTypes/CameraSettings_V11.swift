//
//  CameraSettings_V11.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum CameraSettings_V11: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V11
    public typealias PreviousInstance = CameraSettings_V10.CameraSettings
    public typealias CameraDirection = CameraDirection_V11.CameraDirection
    public typealias StitchCameraOrientation = StitchCameraOrientation_V11.StitchCameraOrientation

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

extension CameraSettings_V11.CameraSettings: StitchVersionedCodable {
    public init(previousInstance: CameraSettings_V11.PreviousInstance) {
        self.init(direction:
                    CameraSettings_V11.CameraDirection(previousInstance: previousInstance.direction),
                  orientation:
                    CameraSettings_V11.StitchCameraOrientation(previousInstance: previousInstance.orientation))
    }
}
