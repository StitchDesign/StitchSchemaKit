//
//  StitchFont.swift
//
//
//  Created by Elliot Boschwitz on 2/3/24.
//

import Foundation

public enum StitchFont_V11: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V11
    public typealias PreviousInstance = StitchFont_V10.StitchFont
    public typealias StitchFontChoice = StitchFontChoice_V11.StitchFontChoice
    public typealias StitchFontWeight = StitchFontWeight_V11.StitchFontWeight
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

extension StitchFont_V11.StitchFont: StitchVersionedCodable {
    public init(previousInstance: StitchFont_V11.PreviousInstance) {
        self.init(fontChoice: 
                    StitchFont_V11.StitchFontChoice(previousInstance: previousInstance.fontChoice),
                  fontWeight:
                    StitchFont_V11.StitchFontWeight(previousInstance: previousInstance.fontWeight))
    }
}
