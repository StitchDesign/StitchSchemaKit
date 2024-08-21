//
//  LayerSize_V22.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum LayerSize_V22: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V22
    public typealias PreviousInstance = LayerSize_V21.LayerSize
    public typealias LayerDimension = LayerDimension_V1.LayerDimension
    // MARK: - endif
    

    public struct LayerSize: Equatable {
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

extension LayerSize_V22.LayerSize: StitchVersionedCodable {
    public init(previousInstance: LayerSize_V22.PreviousInstance) {
        self.init(width: previousInstance.width, height: previousInstance.height)
    }
}
