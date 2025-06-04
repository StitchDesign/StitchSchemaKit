//
//  NodeKindDescribable_V32.swift
//  StitchSchemaKit
//
//  Created by Elliot Boschwitz on 6/2/25.
//

import Foundation

public enum NodeKindDescribable_V32 {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V32
    // MARK: - endif
    
    public protocol NodeKindDescribable: CaseIterable {
        func defaultDisplayTitle() -> String
        
        var aiNodeDescription: String { get }
        
        static var titleDisplay: String { get }
    }
}

extension NodeKindDescribable_V32.NodeKindDescribable {
    public var aiDisplayTitle: String {
        Self.toCamelCase(self.defaultDisplayTitle()) + " || \(Self.titleDisplay)"
    }

    private static func toCamelCase(_ sentence: String) -> String {
        let words = sentence.components(separatedBy: " ")
        let camelCaseString = words.enumerated().map { index, word in
            index == 0 ? word.lowercased() : word.capitalized
        }.joined()
        return camelCaseString
    }
}
