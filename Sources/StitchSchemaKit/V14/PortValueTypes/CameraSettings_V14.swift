//
//  CameraSettings_V14.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum CameraSettings_V14: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V14
    public typealias PreviousInstance = CameraSettings_V13.CameraSettings
    public typealias CameraDirection = CameraDirection_V14.CameraDirection
    public typealias StitchCameraOrientation = StitchCameraOrientation_V14.StitchCameraOrientation

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

extension CameraSettings_V14.CameraSettings: StitchVersionedCodable {
    public init(previousInstance: CameraSettings_V14.PreviousInstance) {
        self.init(direction:
                    CameraSettings_V14.CameraDirection(previousInstance: previousInstance.direction),
                  orientation:
                    CameraSettings_V14.StitchCameraOrientation(previousInstance: previousInstance.orientation))
    }
}
