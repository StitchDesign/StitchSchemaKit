//
//  LayerDimension_V2.swift
//  
//
//  Created by Nicholas Arner on 1/26/24.
//

import Foundation

public enum LayerDimension_V2: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V2
    public typealias PreviousInstance = LayerDimension_V1.LayerDimension
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

extension LayerDimension_V2.LayerDimension: StitchVersionedCodable {
    public init(previousInstance: LayerDimension_V2.PreviousInstance) {
        switch previousInstance {
            
        case .number(let value):
            self = .number(value)
        case .auto:
            self = .auto
        case .parentPercent(let value):
            self = .parentPercent(value)
        }
    }
}
