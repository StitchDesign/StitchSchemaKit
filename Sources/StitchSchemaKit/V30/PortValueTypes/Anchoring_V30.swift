//
//  File.swift
//  
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum Anchoring_V30: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V30
    public typealias PreviousInstance = Anchoring_V29.Anchoring
    // MARK: - endif
     
    public struct Anchoring: Hashable, Equatable, Codable {
        public var x: Double // left vs center vs right
        public var y: Double // top vs middle vs bottom

        public init(x: Double, y: Double) {
            self.x = x
            self.y = y
        }
        
        public static let top: Double = 0
        public static let middle: Double = Self.center
        public static let bottom: Double = 1
        
        public static let left: Double = 0
        public static let center: Double = 0.5
        public static let right: Double = 1
    }
}

extension Anchoring_V30.Anchoring: StitchVersionedCodable {
    public init(previousInstance: Anchoring_V30.PreviousInstance) {
        self.init(x: previousInstance.x,
                  y: previousInstance.y)
    }
}
