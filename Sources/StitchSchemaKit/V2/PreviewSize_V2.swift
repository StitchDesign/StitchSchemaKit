//
//  PreviewSize_V2.swift
//  
//
//  Created by Nicholas Arner on 1/27/24.
//

import Foundation

public enum PreviewSize_V2: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V2
    public typealias PreviousInstance = Self.PreviewSize
    // MARK: - endif
    
    public enum PreviewSize: String, CaseIterable, Identifiable {
        public var id: String { self.rawValue }

        // iPhones
        case iPhone14 = "iPhone 14"
        case iPhone14Plus = "iPhone 14 Plus"
        case iPhone14Pro = "iPhone 14 Pro"
        case iPhone14ProMax = "iPhone 14 Pro Max"
        case iPhone13 = "iPhone 13"
        case iPhone13mini = "iPhone 13 mini"
        case iPhone13ProMax = "iPhone 13 Pro Max"
        case iPhone13Pro = "iPhone 13 Pro"
        case iPhone12 = "iPhone 12"
        case iPhone12mini = "iPhone 12 mini"
        case iPhone12ProMax = "iPhone 12 Pro Max"
        case iPhone12Pro = "iPhone 12 Pro"
        case iPhoneSe2ndGen = "iPhone SE (2nd gen)"
        case iPhone11ProMax = "iPhone 11 Pro Max"
        case iPhone11Pro = "iPhone 11 Pro"
        case iPhone11 = "iPhone 11"
        case iPhoneSE1stGen = "iPhone SE (1st gen)"

        // iPads
        case iPadMini6thGen = "iPad Mini (6th gen)"
        case iPad9thGen = "iPad (9th gen)"
        case iPadPro12Inch = "iPad Pro (12.9\")"
        case iPadPro11Inch = "iPad Pro (11\")"
        case iPadAir4thGen = "iPad Air (4th gen)"
        case iPadMini5thGen = "iPad Mini (5th gen)"
        case iPadAir3rdGen = "iPad Air (3rd gen)"
        case iPadPro10Inch = "iPad Pro (10.5\")"

        // MacBooks
        case MacBookAir = "MacBook Air (13.3\")"
        case MacBook = "MacBook (12\")"
        case MacBookPro = "MacBook Pro (15.4\")"

        // iMacs
        case iMacRetina24Inch = "iMac Retina (24\")"
        case iMacRetina27Inch = "iMac Retina (27\")"
        case iMacProRetina27Inch = "iMac Pro Retina (27\")"

        case custom = "Custom Size"
    }


}

extension PreviewSize_V2.PreviewSize: StitchVersionedCodable {
    public init(previousInstance: PreviewSize_V2.PreviousInstance) {
        fatalError()
    }
}
