//
//  StitchFont.swift
//
//
//  Created by Elliot Boschwitz on 2/3/24.
//

import Foundation

public enum StitchFont_V32: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V32
    public typealias PreviousInstance = StitchFont_V31.StitchFont
    public typealias StitchFontChoice = StitchFontChoice_V32.StitchFontChoice
    public typealias StitchFontWeight = StitchFontWeight_V32.StitchFontWeight
    // MARK: - endif

    // the value that lives in the input's PortValue and which is passed down to view models etc.
    public struct StitchFont: Equatable, Codable, Hashable {
        public var fontChoice: StitchFontChoice
        public var fontWeight: StitchFontWeight
        
        public init(fontChoice: StitchFontChoice, 
                    fontWeight: StitchFontWeight) {
            self.fontChoice = fontChoice
            self.fontWeight = fontWeight
        }
    }
}

extension StitchFont_V32.StitchFont: StitchVersionedCodable {
    public init(previousInstance: StitchFont_V32.PreviousInstance) {
        self.init(fontChoice: 
                    StitchFont_V32.StitchFontChoice(previousInstance: previousInstance.fontChoice),
                  fontWeight:
                    StitchFont_V32.StitchFontWeight(previousInstance: previousInstance.fontWeight))
    }
}
