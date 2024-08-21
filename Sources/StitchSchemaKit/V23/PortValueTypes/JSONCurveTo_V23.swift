//
//  JSONCurveTo_V23.swift
//
//
//  Created by Nicholas Arner on 1/26/24.
//

import Foundation


public enum JSONCurveTo_V23: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V23
    
    // TODO: fix after version 23
    public typealias PreviousInstance = JSONCurveTo_V1.JSONCurveTo
    // MARK: - endif
 
    public struct JSONCurveTo: Equatable, Hashable {
        public let point: CGPoint

        // i.e. JSON's `curveFrom`
        public let controlPoint1: CGPoint

        // i.e. JSON's `curveTo`
        public let controlPoint2: CGPoint
        
        public init(point: CGPoint, controlPoint1: CGPoint, controlPoint2: CGPoint) {
            self.point = point
            self.controlPoint1 = controlPoint1
            self.controlPoint2 = controlPoint2
        }
    }

}

extension JSONCurveTo_V23.JSONCurveTo: StitchVersionedCodable {
    public init(previousInstance: JSONCurveTo_V23.PreviousInstance) {
        self.init(point: previousInstance.point, controlPoint1: previousInstance.controlPoint1, controlPoint2: previousInstance.controlPoint2)
    }
}
