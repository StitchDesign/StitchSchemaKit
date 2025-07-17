//
//  File.swift
//  StitchSchemaKit
//
//  Created by Christian J Clampitt on 6/3/25.
//

import Foundation

//
//  KeyboardType_V33.swift
//  StitchSchemaKit
//
//  Created by Christian J Clampitt on 6/3/25.
//

import Foundation

public enum KeyboardType_V33: StitchSchemaVersionable {
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V33
    public typealias PreviousInstance = KeyboardType_V32.KeyboardType

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

extension KeyboardType_V33.KeyboardType: StitchVersionedCodable {
    public init(previousInstance: KeyboardType_V33.PreviousInstance) {
        switch previousInstance {
        case .defaultKeyboard:
            self = .defaultKeyboard
        case .asciiCapable:
            self = .asciiCapable
        case .numbersAndPunctuation:
            self = .numbersAndPunctuation
        case .url:
            self = .url
        case .numberPad:
            self = .numberPad
        case .phonePad:
            self = .phonePad
        case .namePhonePad:
            self = .namePhonePad
        case .emailAddress:
            self = .emailAddress
        case .decimalPad:
            self = .decimalPad
        case .twitter:
            self = .twitter
        case .webSearch:
            self = .webSearch
        case .asciiCapableNumberPad:
            self = .asciiCapableNumberPad
        }
    }
}
