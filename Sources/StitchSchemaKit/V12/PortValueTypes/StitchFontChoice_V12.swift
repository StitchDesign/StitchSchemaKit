//
//  StitchFontChoice.swift
//
//
//  Created by Elliot Boschwitz on 2/3/24.
//

import Foundation

public enum StitchFontChoice_V12: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V12
    public typealias PreviousInstance = StitchFontChoice_V11.StitchFontChoice
    // MARK: - endif

    public enum StitchFontChoice: String, Equatable, CaseIterable, Codable, Hashable {
        case sf = "SF",
             sfMono = "SF Mono",
             sfRounded = "SF Rounded",
             newYorkSerif = "New York Serif"
    }
}

extension StitchFontChoice_V12.StitchFontChoice: StitchVersionedCodable {
    public init(previousInstance: StitchFontChoice_V12.PreviousInstance) {
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