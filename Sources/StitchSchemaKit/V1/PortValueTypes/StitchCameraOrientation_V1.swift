//
//  StitchCameraOrientation_V1.swift
//
//
//  Created by Nicholas Arner on 1/25/24.
//

import Foundation
import UIKit

public enum StitchCameraOrientation_V1: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V1
    public typealias PreviousInstance = Self.StitchCameraOrientation
    // MARK: - endif
    

    public enum StitchCameraOrientation: String, Equatable, Hashable, CaseIterable {
        case portrait = "Portrait",
             portraitUpsideDown = "Portrait Upside-Down",
             landscapeLeft = "Landscape Left",
             landscapeRight = "Landscape Right"
    }
}

extension StitchCameraOrientation_V1.StitchCameraOrientation: StitchVersionedCodable {
    public init(previousInstance: StitchCameraOrientation_V1.PreviousInstance) {
        fatalError()
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
