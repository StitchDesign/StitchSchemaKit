//
//  ScrollJumpStyle_V30.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum ScrollJumpStyle_V30: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V30
    public typealias PreviousInstance = ScrollJumpStyle_V29.ScrollJumpStyle
    // MARK: - endif
    

    public enum ScrollJumpStyle: String, CaseIterable, Hashable {
        case animated
        case instant
    }

}

extension ScrollJumpStyle_V30.ScrollJumpStyle: StitchVersionedCodable {
    public init(previousInstance: ScrollJumpStyle_V30.PreviousInstance) {
        switch previousInstance {
            
        case .animated:
            self = .animated
        case .instant:
            self = .instant
        }
    }
}

