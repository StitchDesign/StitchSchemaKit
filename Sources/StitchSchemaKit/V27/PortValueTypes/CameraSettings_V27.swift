//
//  CameraSettings_V27.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum CameraSettings_V27: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V27
    public typealias PreviousInstance = CameraSettings_V26.CameraSettings
    public typealias CameraDirection = CameraDirection_V27.CameraDirection
    public typealias StitchCameraOrientation = StitchCameraOrientation_V27.StitchCameraOrientation

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

extension CameraSettings_V27.CameraSettings: StitchVersionedCodable {
    public init(previousInstance: CameraSettings_V27.PreviousInstance) {
        self.init(direction:
                    CameraSettings_V27.CameraDirection(previousInstance: previousInstance.direction),
                  orientation:
                    CameraSettings_V27.StitchCameraOrientation(previousInstance: previousInstance.orientation))
    }
}
