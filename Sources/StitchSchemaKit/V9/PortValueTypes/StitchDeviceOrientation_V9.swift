//
//  StitchDeviceOrientation_V9.swift
//  
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation

public enum StitchDeviceOrientation_V9: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V9
    public typealias PreviousInstance = StitchDeviceOrientation_V8.StitchDeviceOrientation
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

extension StitchDeviceOrientation_V9.StitchDeviceOrientation: StitchVersionedCodable {
    public init(previousInstance: StitchDeviceOrientation_V9.PreviousInstance) {
        switch previousInstance {
            
        case .unknown:
            self = .unknown
        case .portrait:
            self = .portrait
        case .portraitUpsideDown:
            self = .portraitUpsideDown
        case .landscapeLeft:
            self = .landscapeLeft
        case .landscapeRight:
            self = .landscapeRight
        case .faceUp:
            self = .faceUp
        case .faceDown:
            self = .faceDown
        }
    }
}
