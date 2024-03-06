//
//  CameraSettings_V3.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum CameraSettings_V3: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V3
    public typealias PreviousInstance = CameraSettings_V2.CameraSettings
    public typealias CameraDirection = CameraDirection_V3.CameraDirection
    public typealias StitchCameraOrientation = StitchCameraOrientation_V3.StitchCameraOrientation

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

extension CameraSettings_V3.CameraSettings: StitchVersionedCodable {
    public init(previousInstance: CameraSettings_V3.PreviousInstance) {
        self.init(direction:
                    CameraSettings_V3.CameraDirection(previousInstance: previousInstance.direction),
                  orientation:
                    CameraSettings_V3.StitchCameraOrientation(previousInstance: previousInstance.orientation))
    }
}
