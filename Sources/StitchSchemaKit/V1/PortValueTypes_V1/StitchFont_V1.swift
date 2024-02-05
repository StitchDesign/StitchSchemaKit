//
//  StitchFont.swift
//
//
//  Created by Elliot Boschwitz on 2/3/24.
//

import Foundation

public enum StitchFont_V1: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V1
    public typealias PreviousInstance = Self.StitchFont
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

extension StitchFont_V1.StitchFont: StitchVersionedCodable {
    public init(previousInstance: StitchFont_V1.PreviousInstance) {
        fatalError()
    }
}
