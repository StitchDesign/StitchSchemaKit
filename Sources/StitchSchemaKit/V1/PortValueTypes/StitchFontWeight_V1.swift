//
//  StitchFontWeight.swift
//
//
//  Created by Elliot Boschwitz on 2/3/24.
//

import Foundation

public enum StitchFontWeight_V1: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V1
    public typealias PreviousInstance = Self.StitchFontWeight
    // MARK: - endif

    public enum StitchFontWeight: String, Equatable, CaseIterable, Codable, Hashable {
        case SF_regular,
             SF_black,
             SF_thin,
             SF_light,
             SF_ultraLight,
             SF_medium,
             SF_semibold,
             SF_bold,
             SF_heavy,
             
             SFMono_regular,
             SFMono_black,
             SFMono_thin,
             SFMono_light,
             SFMono_ultraLight,
             SFMono_medium,
             SFMono_semibold,
             SFMono_bold,
             SFMono_heavy,
             
             SFRounded_regular,
             SFRounded_black,
             SFRounded_thin,
             SFRounded_light,
             SFRounded_ultraLight,
             SFRounded_medium,
             SFRounded_semibold,
             SFRounded_bold,
             SFRounded_heavy,
             
             NewYorkSerif_regular,
             NewYorkSerif_black,
             NewYorkSerif_thin,
             NewYorkSerif_light,
             NewYorkSerif_ultraLight,
             NewYorkSerif_medium,
             NewYorkSerif_semibold,
             NewYorkSerif_bold,
             NewYorkSerif_heavy
    }
}

extension StitchFontWeight_V1.StitchFontWeight: StitchVersionedCodable {
    public init(previousInstance: StitchFontWeight_V1.PreviousInstance) {
        fatalError()
    }
}
