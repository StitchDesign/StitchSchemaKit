//
//  StitchFontChoice.swift
//
//
//  Created by Elliot Boschwitz on 2/3/24.
//

import Foundation

public enum StitchFontChoice_V30: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V30
    public typealias PreviousInstance = StitchFontChoice_V29.StitchFontChoice
    // MARK: - endif

    public enum StitchFontChoice: String, Equatable, CaseIterable, Codable, Hashable {
        case sf = "SF",
             sfMono = "SF Mono",
             sfRounded = "SF Rounded",
             newYorkSerif = "New York Serif"
    }
}

extension StitchFontChoice_V30.StitchFontChoice: StitchVersionedCodable {
    public init(previousInstance: StitchFontChoice_V30.PreviousInstance) {
        switch previousInstance {
        case .sf:
            self = .sf
        case .sfMono:
            self = .sfMono
        case .sfRounded:
            self = .sfRounded
        case .newYorkSerif:
            self = .newYorkSerif
        }
    }
}
