//
//  File.swift
//  
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum CameraDirection_V11: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V11
    public typealias PreviousInstance = CameraDirection_V10.CameraDirection
    // MARK: - endif
 
    // e.g. AVCaptureDevice.Position.front
    public enum CameraDirection: String, CaseIterable {
        case front, back
    }

}

extension CameraDirection_V11.CameraDirection: StitchVersionedCodable {
    public init(previousInstance: CameraDirection_V11.PreviousInstance) {
        switch previousInstance {
            
        case .front:
            self = .front
        case .back:
            self = .back
        }
    }
}
