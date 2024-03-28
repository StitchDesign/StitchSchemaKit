//
//  File.swift
//  
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum Anchoring_V5: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V5
    public typealias PreviousInstance = Anchoring_V4.Anchoring
    // MARK: - endif
     
    public struct Anchoring: Hashable, Equatable, Codable {
        public var y: Double // top vs middle vs bottom
        public var x: Double // left vs center vs right

        static let top: Double = 0
        static let middle: Double = Self.center
        static let bottom: Double = 1
        
        static let left: Double = 0
        static let center: Double = 0.5
        static let right: Double = 1
    }
}

extension Anchoring_V5.Anchoring: StitchVersionedCodable {
    public init(previousInstance: Anchoring_V5.PreviousInstance) {
        switch previousInstance {
            
        case .topLeft:
            self = .init(y: Self.top, x: Self.left)
        case .topCenter:
            self = .init(y: Self.top, x: Self.center)
        case .topRight:
            self = .init(y: Self.top, x: Self.right)
        case .centerLeft:
            self = .init(y: Self.center, x: Self.left)
        case .center:
            self = .init(y: Self.center, x: Self.center)
        case .centerRight:
            self = .init(y: Self.center, x: Self.right)
        case .bottomLeft:
            self = .init(y: Self.bottom, x: Self.left)
        case .bottomCenter:
            self = .init(y: Self.bottom, x: Self.center)
        case .bottomRight:
            self = .init(y: Self.bottom, x: Self.right)
        }
    }
}
