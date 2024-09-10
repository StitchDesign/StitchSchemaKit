//
//  StitchDeviceOrientation_V1.swift
//  
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum StitchDeviceOrientation_V1: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V1
    public typealias PreviousInstance = Self.StitchDeviceOrientation
    // MARK: - endif
 
    public enum StitchDeviceOrientation: String, CaseIterable {
        case unknown = "Unknown",
             portrait = "Portrait",
             portraitUpsideDown = "Portrait Upside-Down",
             landscapeLeft = "Landscape Left",
             landscapeRight = "Landscape Right",
             faceUp = "Face Up",
             faceDown = "Face Down"
    }
}

extension StitchDeviceOrientation_V1.StitchDeviceOrientation: StitchVersionedCodable {
    public init(previousInstance: StitchDeviceOrientation_V1.PreviousInstance) {
        fatalError()
    }
}
