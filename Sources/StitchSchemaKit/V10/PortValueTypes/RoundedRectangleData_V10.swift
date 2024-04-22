//
//  RoundedRectangleData_V10.swift
//  
//
//  Created by Nicholas Arner on 1/26/24.
//

import Foundation

public enum RoundedRectangleData_V10: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V10
    public typealias PreviousInstance = RoundedRectangleData_V9.RoundedRectangleData
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

extension RoundedRectangleData_V10.RoundedRectangleData: StitchVersionedCodable {
    public init(previousInstance: RoundedRectangleData_V10.PreviousInstance) {
        self.init(rect: previousInstance.rect, cornerRadius: previousInstance.cornerRadius)
    }
}
