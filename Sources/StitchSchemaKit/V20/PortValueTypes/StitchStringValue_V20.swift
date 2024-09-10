//
//  File.swift
//  
//
//  Created by Elliot Boschwitz on 5/17/24.
//

import Foundation

public enum StitchStringValue_V20: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V20
    public typealias PreviousInstance = StitchStringValue_V19.StitchStringValue
    // MARK: - end
    
    /// A wrapper for some Base64 string which also contains an ID mapping to`StitchImage` for perf resasons.
    public struct StitchStringValue: Equatable, Codable, Sendable {
        public let string: String
        
        // ID more efficient comparison for large strings
        private var id: UUID = .init()
        
        // Must be manually set since checking string lengths uses too much compute
        public var isLargeString: Bool = false
        
        public init(_ string: String,
                    isLargeString: Bool = false) {
            self.string = string
            self.isLargeString = isLargeString
        }
        
        // Improves equality check performance
        public static func == (lhs: StitchStringValue, rhs: StitchStringValue) -> Bool {
            let usesLargeString = lhs.isLargeString || rhs.isLargeString
            
            guard !usesLargeString else {
                return lhs.id == rhs.id
            }
            
            // Otherwise just check normal strings
            return lhs.string == rhs.string
        }
    }
}

extension StitchStringValue_V20.StitchStringValue: StitchVersionedCodable {
    public init(previousInstance: StitchStringValue_V20.PreviousInstance) {
        self.init(previousInstance.string)
    }
}
