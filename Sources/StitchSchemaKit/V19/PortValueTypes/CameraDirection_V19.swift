//
//  File.swift
//  
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum CameraDirection_V19: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V19
    public typealias PreviousInstance = CameraDirection_V18.CameraDirection
    // MARK: - endif
 
    // e.g. AVCaptureDevice.Position.front
    public enum CameraDirection: String, CaseIterable {
        case front, back
    }

}

extension CameraDirection_V19.CameraDirection: StitchVersionedCodable {
    public init(previousInstance: CameraDirection_V19.PreviousInstance) {
        switch previousInstance {
            
        case .front:
            self = .front
        case .back:
            self = .back
        }
    }
}
