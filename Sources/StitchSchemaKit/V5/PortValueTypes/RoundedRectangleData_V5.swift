//
//  RoundedRectangleData_V5.swift
//  
//
//  Created by Nicholas Arner on 1/26/24.
//

import Foundation

public enum RoundedRectangleData_V5: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V5
    public typealias PreviousInstance = RoundedRectangleData_V4.RoundedRectangleData
    // MARK: - endif
 
    public struct RoundedRectangleData: Equatable {
        public var rect: CGRect
        public var cornerRadius: CGFloat
        
        public init(rect: CGRect, cornerRadius: CGFloat) {
            self.rect = rect
            self.cornerRadius = cornerRadius
        }
    }

}

extension RoundedRectangleData_V5.RoundedRectangleData: StitchVersionedCodable {
    public init(previousInstance: RoundedRectangleData_V5.PreviousInstance) {
        self.init(rect: previousInstance.rect, cornerRadius: previousInstance.cornerRadius)
    }
}
