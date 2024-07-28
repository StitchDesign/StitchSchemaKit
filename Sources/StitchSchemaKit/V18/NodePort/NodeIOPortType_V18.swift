//
//  NodeIOPortType_V18.swift
//
//
//  Created by Elliot Boschwitz on 4/3/24.
//

import Foundation

public enum NodeIOPortType_V18: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V18
    public typealias PreviousInstance = NodeIOPortType_V17.NodeIOPortType
    public typealias LayerInputType = LayerInputType_V18.LayerInputType
    // MARK: - endif
    
    public enum NodeIOPortType: Hashable, Equatable {
        case portIndex(Int)
        case keyPath(LayerInputType)
    }
}

extension NodeIOPortType_V18.NodeIOPortType: StitchVersionedCodable {
    public init(previousInstance: NodeIOPortType_V18.PreviousInstance) {
        fatalError()
    }
}
