//
//  File.swift
//  
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum CameraDirection_V6: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V6
    public typealias PreviousInstance = CameraDirection_V5.CameraDirection
    // MARK: - endif
 
    // e.g. AVCaptureDevice.Position.front
    public enum CameraDirection: String, CaseIterable {
        case front, back
    }

}

extension CameraDirection_V6.CameraDirection: StitchVersionedCodable {
    public init(previousInstance: CameraDirection_V6.PreviousInstance) {
        switch previousInstance {
            
        case .front:
            self = .front
        case .back:
            self = .back
        }
    }
}
