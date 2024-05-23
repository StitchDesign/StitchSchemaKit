//
//  NodeIOPortType_V16.swift
//
//
//  Created by Elliot Boschwitz on 4/3/24.
//

import Foundation

public enum NodeIOPortType_V16: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V16
    public typealias PreviousInstance = Self.NodeIOPortType
    public typealias LayerInputType = LayerInputType_V16.LayerInputType
    // MARK: - endif
    
    public enum NodeIOPortType: Hashable, Equatable {
        case portIndex(Int)
        case keyPath(LayerInputType)
    }
}

extension NodeIOPortType_V16.NodeIOPortType: StitchVersionedCodable {
    public init(previousInstance: NodeIOPortType_V16.PreviousInstance) {
        fatalError()
    }
}
