//
//  LayerDimension_V31.swift
//  
//
//  Created by Nicholas Arner on 1/26/24.
//

import Foundation

public enum LayerDimension_V31: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V31
    public typealias PreviousInstance = LayerDimension_V30.LayerDimension
    // MARK: - endif
 

    public enum LayerDimension: Hashable {
        case number(CGFloat),
             // visual media layer: resource's inherent dimnensions
             // non-media layer: 100% of parent's dimension
             auto,
             // parentPercent(100), // use 100% of parent dimenion
             // parentPercent(50) // use 50% of parent dimension
             parentPercent(Double),
             
             // i.e. "Grow", child's dimension fills parent,
             // but takes into account siblings also using "Grow"/`fill`
             fill,
        
             // Parent "hugs" children, i.e. only takes up as much space as needed by the children
             hug
    }


}

extension LayerDimension_V31.LayerDimension: StitchVersionedCodable {
    public init(previousInstance: LayerDimension_V31.PreviousInstance) {
        switch previousInstance {
            
        case .number(let value):
            self = .number(value)
        case .auto:
            self = .auto
        case .parentPercent(let value):
            self = .parentPercent(value)
        case .fill:
            self = .fill
        case .hug:
            self = .hug
        }
    }
}

extension LayerDimension_V31.LayerDimension: CustomStringConvertible {
    public static let AUTO_SIZE_STRING = "auto"
    public static let FILL_SIZE_STRING = "fill"
    public static let HUG_SIZE_STRING = "hug"
    
    // MARK: string coercison causes perf loss (GitHub issue #3120)
    public var description: String {
        switch self {
        case .auto:
            return Self.AUTO_SIZE_STRING
        case .parentPercent(let x):
            //            return "\(x.coerceToUserFriendlyString)%"
            return "\(x.description)%"
        case .number(let x):
            //            return x.coerceToUserFriendlyString
            return x.description
        case .fill:
            return Self.FILL_SIZE_STRING
        case .hug:
            return Self.HUG_SIZE_STRING
        }
    }
}
