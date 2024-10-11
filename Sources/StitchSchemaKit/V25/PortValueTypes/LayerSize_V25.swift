//
//  LayerSize_V25.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum LayerSize_V25: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V25
    public typealias PreviousInstance = LayerSize_V24.LayerSize
    public typealias LayerDimension = LayerDimension_V25.LayerDimension
    // MARK: - endif
    

    public struct LayerSize: Hashable {
        public var width: LayerDimension
        public var height: LayerDimension
        
        public init(width: LayerDimension, height: LayerDimension) {
            self.width = width
            self.height = height
        }
        
        public init(width: CGFloat, height: CGFloat) {
            self.width = LayerDimension.number(width)
            self.height = LayerDimension.number(height)
        }

        public init(width: LayerDimension, height: CGFloat) {
            self.width = width
            self.height = .number(height)
        }

        public init(width: CGFloat, height: LayerDimension) {
            self.width = .number(width)
            self.height = height
        }

        public init(_ size: CGSize) {
            self.width = LayerDimension.number(size.width)
            self.height = LayerDimension.number(size.height)
        }
    }


}

extension LayerSize_V25.LayerSize: StitchVersionedCodable {
    public init(previousInstance: LayerSize_V25.PreviousInstance) {
        self.init(width: .init(previousInstance: previousInstance.width),
                  height: .init(previousInstance: previousInstance.height))
    }
}
