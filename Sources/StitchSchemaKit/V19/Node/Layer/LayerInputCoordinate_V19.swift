//
//  LayerInputCoordinate_V19.swift
//
//
//  Created by Elliot Boschwitz on 7/12/24.
//

import Foundation

public enum LayerInputCoordinate_V19: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V19
    public typealias PreviousInstance = Self.LayerInputCoordinate
    public typealias LayerInputType = LayerInputType_V19.LayerInputType
    // MARK: - endif
 

    public struct LayerInputCoordinate: Equatable, Hashable {
        public var node: UUID // id for the parent layer node
        public var keyPath: LayerInputType // the keypath, i.e. unique port
    }
}

extension LayerInputCoordinate_V19.LayerInputCoordinate: StitchVersionedCodable {
    public init(previousInstance: LayerInputCoordinate_V19.PreviousInstance) {
        fatalError()
    }
}
