//
//  LayerDimension_V6.swift
//  
//
//  Created by Nicholas Arner on 1/26/24.
//

import Foundation

public enum LayerDimension_V6: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V6
    public typealias PreviousInstance = LayerDimension_V5.LayerDimension
    // MARK: - endif
 

    public enum LayerDimension: Equatable {
        case number(CGFloat),
             // visual media layer: resource's inherent dimnensions
             // non-media layer: 100% of parent's dimension
             auto,
             // parentPercent(100), // use 100% of parent dimenion
             // parentPercent(50) // use 50% of parent dimension
             parentPercent(Double),
             
             // i.e. "Grow", child's dimension fills parent,
             // but takes into account siblings also using "Grow"/`fill`
             fill
    }


}

extension LayerDimension_V6.LayerDimension: StitchVersionedCodable {
    public init(previousInstance: LayerDimension_V6.PreviousInstance) {
        switch previousInstance {
            
        case .number(let value):
            self = .number(value)
        case .auto:
            self = .auto
        case .parentPercent(let value):
            self = .parentPercent(value)
        case .fill:
            self = .fill
        }
    }
}
