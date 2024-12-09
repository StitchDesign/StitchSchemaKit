//
//  StitchFontChoice.swift
//
//
//  Created by Elliot Boschwitz on 2/3/24.
//

import Foundation

public enum StitchFontChoice_V28: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V28
    public typealias PreviousInstance = StitchFontChoice_V27.StitchFontChoice
    // MARK: - endif

    public enum StitchFontChoice: String, Equatable, CaseIterable, Codable, Hashable {
        case sf = "SF",
             sfMono = "SF Mono",
             sfRounded = "SF Rounded",
             newYorkSerif = "New York Serif"
    }
}

extension StitchFontChoice_V28.StitchFontChoice: StitchVersionedCodable {
    public init(previousInstance: StitchFontChoice_V28.PreviousInstance) {
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
