//
//  TriangleData_V1.swift
//
//
//  Created by Nicholas Arner on 1/26/24.
//

import Foundation

public enum TriangleData_V1: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V1
    public typealias PreviousInstance = Self.TriangleData
    // MARK: - endif
 
    public struct TriangleData: Codable, Equatable {
        public var points: [CGPoint] {
            [p1, p2, p3]
        }
        
        // A triangle is made up of three points:
        public let p1: CGPoint
        public let p2: CGPoint
        public let p3: CGPoint
        
        public init(p1: CGPoint, p2: CGPoint, p3: CGPoint) {
            self.p1 = p1
            self.p2 = p2
            self.p3 = p3
        }
    }

}

extension TriangleData_V1.TriangleData: StitchVersionedCodable {
    public init(previousInstance: TriangleData_V1.PreviousInstance) {
        fatalError()
    }
}
