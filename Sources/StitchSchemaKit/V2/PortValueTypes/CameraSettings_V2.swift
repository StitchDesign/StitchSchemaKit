//
//  CameraSettings_V2.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum CameraSettings_V2: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V2
    public typealias PreviousInstance = CameraSettings_V1.CameraSettings
    public typealias CameraDirection = CameraDirection_V2.CameraDirection
    public typealias StitchCameraOrientation = StitchCameraOrientation_V2.StitchCameraOrientation

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

extension CameraSettings_V2.CameraSettings: StitchVersionedCodable {
    public init(previousInstance: CameraSettings_V2.PreviousInstance) {
        self.init(direction:
                    CameraSettings_V2.CameraDirection(previousInstance: previousInstance.direction),
                  orientation:
                    CameraSettings_V2.StitchCameraOrientation(previousInstance: previousInstance.orientation))
    }
}
