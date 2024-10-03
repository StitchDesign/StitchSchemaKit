//
//  LayerInputCoordinate_V25.swift
//
//
//  Created by Elliot Boschwitz on 7/12/24.
//

import Foundation

public enum LayerInputCoordinate_V25: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V25
    public typealias PreviousInstance = LayerInputCoordinate_V24.LayerInputCoordinate
    public typealias LayerInputType = LayerInputType_V25.LayerInputType
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

extension LayerInputCoordinate_V25.LayerInputCoordinate: StitchVersionedCodable {
    public init(previousInstance: LayerInputCoordinate_V25.PreviousInstance) {
        self.node = previousInstance.node
        self.keyPath = .init(previousInstance: previousInstance.keyPath)
    }
}
