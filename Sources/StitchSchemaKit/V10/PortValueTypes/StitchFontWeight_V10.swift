//
//  StitchFontWeight.swift
//
//
//  Created by Elliot Boschwitz on 2/3/24.
//

import Foundation

public enum StitchFontWeight_V10: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V10
    public typealias PreviousInstance = StitchFontWeight_V9.StitchFontWeight
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

extension StitchFontWeight_V10.StitchFontWeight: StitchVersionedCodable {
    public init(previousInstance: StitchFontWeight_V10.PreviousInstance) {
        switch previousInstance {
        case .SF_regular:
            self = .SF_regular
        case .SF_black:
            self = .SF_black
        case .SF_thin:
            self = .SF_thin
        case .SF_light:
            self = .SF_light
        case .SF_ultraLight:
            self = .SF_ultraLight
        case .SF_medium:
            self = .SF_medium
        case .SF_semibold:
            self = .SF_semibold
        case .SF_bold:
            self = .SF_bold
        case .SF_heavy:
            self = .SF_heavy
        case .SFMono_regular:
            self = .SFMono_regular
        case .SFMono_black:
            self = .SFMono_black
        case .SFMono_thin:
            self = .SFMono_thin
        case .SFMono_light:
            self = .SFMono_light
        case .SFMono_ultraLight:
            self = .SFMono_ultraLight
        case .SFMono_medium:
            self = .SFMono_medium
        case .SFMono_semibold:
            self = .SFMono_semibold
        case .SFMono_bold:
            self = .SFMono_bold
        case .SFMono_heavy:
            self = .SFMono_heavy
        case .SFRounded_regular:
            self = .SFRounded_regular
        case .SFRounded_black:
            self = .SFRounded_black
        case .SFRounded_thin:
            self = .SFRounded_thin
        case .SFRounded_light:
            self = .SFRounded_light
        case .SFRounded_ultraLight:
            self = .SFRounded_ultraLight
        case .SFRounded_medium:
            self = .SFRounded_medium
        case .SFRounded_semibold:
            self = .SFRounded_semibold
        case .SFRounded_bold:
            self = .SFRounded_bold
        case .SFRounded_heavy:
            self = .SFRounded_heavy
        case .NewYorkSerif_regular:
            self = .NewYorkSerif_regular
        case .NewYorkSerif_black:
            self = .NewYorkSerif_black
        case .NewYorkSerif_thin:
            self = .NewYorkSerif_thin
        case .NewYorkSerif_light:
            self = .NewYorkSerif_light
        case .NewYorkSerif_ultraLight:
            self = .NewYorkSerif_ultraLight
        case .NewYorkSerif_medium:
            self = .NewYorkSerif_medium
        case .NewYorkSerif_semibold:
            self = .NewYorkSerif_semibold
        case .NewYorkSerif_bold:
            self = .NewYorkSerif_bold
        case .NewYorkSerif_heavy:
            self = .NewYorkSerif_heavy
        }
    }
}
