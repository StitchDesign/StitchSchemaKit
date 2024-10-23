//
//  LayerInputCoordinate_V27.swift
//
//
//  Created by Elliot Boschwitz on 7/12/24.
//

import Foundation

public enum LayerInputCoordinate_V27: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V27
    public typealias PreviousInstance = LayerInputCoordinate_V26.LayerInputCoordinate
    public typealias LayerInputType = LayerInputType_V27.LayerInputType
    // MARK: - endif
 

    public struct LayerInputCoordinate: Equatable, Hashable {
        public var node: UUID // id for the parent layer node
        public var keyPath: LayerInputType // the keypath, i.e. unique port
        
        public init(node: UUID, keyPath: LayerInputType) {
            self.node = node
            self.keyPath = keyPath
        }
    }
}

extension LayerInputCoordinate_V27.LayerInputCoordinate: StitchVersionedCodable {
    public init(previousInstance: LayerInputCoordinate_V27.PreviousInstance) {
        self.node = previousInstance.node
        self.keyPath = .init(previousInstance: previousInstance.keyPath)
    }
}
