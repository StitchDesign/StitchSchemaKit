//
//  LayerDimension_V1.swift
//  
//
//  Created by Nicholas Arner on 1/26/24.
//

import Foundation

public enum LayerDimension_V1: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V1
    public typealias PreviousInstance = Self.LayerDimension
    // MARK: - endif
 

    public enum LayerDimension: Equatable {
        case number(CGFloat),
             // visual media layer: resource's inherent dimnensions
             // non-media layer: 100% of parent's dimension
             auto,
             // parentPercent(100), // use 100% of parent dimenion
             // parentPercent(50) // use 50% of parent dimension
             parentPercent(Double)
    }


}

extension LayerDimension_V1.LayerDimension: StitchVersionedCodable {
    public init(previousInstance: LayerDimension_V1.PreviousInstance) {
        fatalError()
    }
}
