//
//  ScrollJumpStyle_V32.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum ScrollJumpStyle_V32: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V32
    public typealias PreviousInstance = ScrollJumpStyle_V31.ScrollJumpStyle
    // MARK: - endif
    

    public enum ScrollJumpStyle: String, CaseIterable, Hashable {
        case animated
        case instant
    }

}

extension ScrollJumpStyle_V32.ScrollJumpStyle: StitchVersionedCodable {
    public init(previousInstance: ScrollJumpStyle_V32.PreviousInstance) {
        switch previousInstance {
            
        case .animated:
            self = .animated
        case .instant:
            self = .instant
        }
    }
}

