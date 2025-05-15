//
//  RoundedRectangleData_V31.swift
//  
//
//  Created by Nicholas Arner on 1/26/24.
//

import Foundation

public enum RoundedRectangleData_V31: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V31
    public typealias PreviousInstance = RoundedRectangleData_V30.RoundedRectangleData
    // MARK: - endif
 
    public struct RoundedRectangleData: Hashable {
        public var rect: CGRect
        public var cornerRadius: CGFloat
        
        public init(rect: CGRect, cornerRadius: CGFloat) {
            self.rect = rect
            self.cornerRadius = cornerRadius
        }
    }

}

extension RoundedRectangleData_V31.RoundedRectangleData: StitchVersionedCodable {
    public init(previousInstance: RoundedRectangleData_V31.PreviousInstance) {
        self.init(rect: previousInstance.rect, cornerRadius: previousInstance.cornerRadius)
    }
}
