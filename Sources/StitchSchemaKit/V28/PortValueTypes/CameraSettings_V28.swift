//
//  CameraSettings_V28.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum CameraSettings_V28: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V28
    public typealias PreviousInstance = CameraSettings_V27.CameraSettings
    public typealias CameraDirection = CameraDirection_V28.CameraDirection
    public typealias StitchCameraOrientation = StitchCameraOrientation_V28.StitchCameraOrientation

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

extension CameraSettings_V28.CameraSettings: StitchVersionedCodable {
    public init(previousInstance: CameraSettings_V28.PreviousInstance) {
        self.init(direction:
                    CameraSettings_V28.CameraDirection(previousInstance: previousInstance.direction),
                  orientation:
                    CameraSettings_V28.StitchCameraOrientation(previousInstance: previousInstance.orientation))
    }
}
