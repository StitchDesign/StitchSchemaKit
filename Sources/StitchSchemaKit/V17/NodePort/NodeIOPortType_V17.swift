//
//  NodeIOPortType_V17.swift
//
//
//  Created by Elliot Boschwitz on 4/3/24.
//

import Foundation

public enum NodeIOPortType_V17: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V17
    public typealias PreviousInstance = NodeIOPortType_V16.NodeIOPortType
    public typealias LayerInputType = LayerInputType_V17.LayerInputType
    // MARK: - endif
    
    public enum NodeIOPortType: Hashable, Equatable {
        case portIndex(Int)
        case keyPath(LayerInputType)
    }
}

extension NodeIOPortType_V17.NodeIOPortType: StitchVersionedCodable {
    public init(previousInstance: NodeIOPortType_V17.PreviousInstance) {
        fatalError()
    }
}
