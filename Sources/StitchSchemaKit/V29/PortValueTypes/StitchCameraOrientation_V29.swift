//
//  StitchCameraOrientation_V29.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation
#if canImport(UIKit)
import UIKit
#endif

public enum StitchCameraOrientation_V29: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V29
    public typealias PreviousInstance = StitchCameraOrientation_V28.StitchCameraOrientation
    // MARK: - endif
    

    public enum StitchCameraOrientation: String, Equatable, Hashable, CaseIterable {
        case portrait = "Portrait",
             portraitUpsideDown = "Portrait Upside-Down",
             landscapeLeft = "Landscape Left",
             landscapeRight = "Landscape Right"
    }
}

extension StitchCameraOrientation_V29.StitchCameraOrientation: StitchVersionedCodable {
    public init(previousInstance: StitchCameraOrientation_V29.PreviousInstance) {
        switch previousInstance {
            
        case .portrait:
            self = .portrait
        case .portraitUpsideDown:
            self = .portraitUpsideDown
        case .landscapeLeft:
            self = .landscapeLeft
        case .landscapeRight:
            self = .landscapeRight
        }
    }
    
    @MainActor
    public static let defaultCameraOrientation: Self = {
#if os(iOS)
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .portrait
        }
        
        if UIDevice.current.userInterfaceIdiom == .pad {
            return .landscapeRight
        }
#endif
        return .landscapeRight
    }()
}
