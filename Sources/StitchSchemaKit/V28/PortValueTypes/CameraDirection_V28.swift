//
//  File.swift
//  
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum CameraDirection_V28: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V28
    public typealias PreviousInstance = CameraDirection_V27.CameraDirection
    // MARK: - endif
 
    // e.g. AVCaptureDevice.Position.front
    public enum CameraDirection: String, CaseIterable, Hashable {
        case front, back
    }

}

extension CameraDirection_V28.CameraDirection: StitchVersionedCodable {
    public init(previousInstance: CameraDirection_V28.PreviousInstance) {
        switch previousInstance {
            
        case .front:
            self = .front
        case .back:
            self = .back
        }
    }
}
