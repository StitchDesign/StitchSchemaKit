//
//  ScrollJumpStyle_V15.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum ScrollJumpStyle_V15: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V15
    public typealias PreviousInstance = ScrollJumpStyle_V14.ScrollJumpStyle
    // MARK: - endif
    

    public enum ScrollJumpStyle: String, CaseIterable {
        case animated
        case instant
    }

}

extension ScrollJumpStyle_V15.ScrollJumpStyle: StitchVersionedCodable {
    public init(previousInstance: ScrollJumpStyle_V15.PreviousInstance) {
        switch previousInstance {
            
        case .animated:
            self = .animated
        case .instant:
            self = .instant
        }
    }
}

