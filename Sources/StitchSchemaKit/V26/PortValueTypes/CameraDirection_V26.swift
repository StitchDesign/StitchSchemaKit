//
//  File.swift
//  
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum CameraDirection_V26: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V26
    public typealias PreviousInstance = CameraDirection_V25.CameraDirection
    // MARK: - endif
 
    // e.g. AVCaptureDevice.Position.front
    public enum CameraDirection: String, CaseIterable, Hashable {
        case front, back
    }

}

extension CameraDirection_V26.CameraDirection: StitchVersionedCodable {
    public init(previousInstance: CameraDirection_V26.PreviousInstance) {
        switch previousInstance {
            
        case .front:
            self = .front
        case .back:
            self = .back
        }
    }
}
