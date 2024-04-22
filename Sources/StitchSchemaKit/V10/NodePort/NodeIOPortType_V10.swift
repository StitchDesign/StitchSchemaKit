//
//  NodeIOPortType_V9.swift
//
//
//  Created by Elliot Boschwitz on 4/3/24.
//

import Foundation

public enum NodeIOPortType_V9: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V9
    public typealias PreviousInstance = Self.NodeIOPortType
    public typealias LayerInputType = LayerInputType_V9.LayerInputType
    // MARK: - endif
    
    public enum NodeIOPortType: Hashable, Equatable {
        case portIndex(Int)
        case keyPath(LayerInputType)
    }
}

extension NodeIOPortType_V9.NodeIOPortType: StitchVersionedCodable {
    public init(previousInstance: NodeIOPortType_V9.PreviousInstance) {
        fatalError()
    }
}
