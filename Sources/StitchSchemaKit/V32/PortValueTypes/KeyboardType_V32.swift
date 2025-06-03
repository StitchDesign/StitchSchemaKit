//
//  File.swift
//  StitchSchemaKit
//
//  Created by Christian J Clampitt on 6/3/25.
//

import Foundation

//
//  KeyboardType_V32.swift
//  StitchSchemaKit
//
//  Created by Christian J Clampitt on 6/3/25.
//

import Foundation

public enum KeyboardType_V32: StitchSchemaVersionable {
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V32
    public typealias PreviousInstance = Self.KeyboardType

    public enum KeyboardType: String, CaseIterable, Hashable {
        case defaultKeyboard = "Default"
        case asciiCapable = "ASCII Only"
        case numbersAndPunctuation = "Numbers & Punctuation"
        case url = "URL"
        case numberPad = "Number Pad"
        case phonePad = "Phone Pad"
        case namePhonePad = "Name or Phone"
        case emailAddress = "Email Address"
        case decimalPad = "Decimal Pad"
        case twitter = "Twitter"
        case webSearch = "Web Search"
        case asciiCapableNumberPad = "ASCII Numbers"
    }
}

extension KeyboardType_V32.KeyboardType: StitchVersionedCodable {
    public init(previousInstance: KeyboardType_V32.PreviousInstance) {
        fatalError()
    }
}
