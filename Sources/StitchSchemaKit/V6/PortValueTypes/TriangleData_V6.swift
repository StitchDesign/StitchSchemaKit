//
//  TriangleData_V6.swift
//
//
//  Created by Nicholas Arner on 1/26/24.
//

import Foundation

public enum TriangleData_V6: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V6
    public typealias PreviousInstance = TriangleData_V5.TriangleData
    // MARK: - endif
 
    public struct TriangleData: Equatable {
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

extension TriangleData_V6.TriangleData: StitchVersionedCodable {
    public init(previousInstance: TriangleData_V6.PreviousInstance) {
        self.init(p1: previousInstance.p1, p2: previousInstance.p2, p3: previousInstance.p3)
    }
}
