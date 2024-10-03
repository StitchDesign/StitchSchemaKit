//
//  NodeIOPortType_V19.swift
//
//
//  Created by Elliot Boschwitz on 4/3/24.
//

import Foundation

public enum NodeIOPortType_V19: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V19
    public typealias PreviousInstance = NodeIOPortType_V18.NodeIOPortType
    public typealias LayerInputType = LayerInputType_V19.LayerInputType
    // MARK: - endif
    
    public enum NodeIOPortType: Hashable, Equatable {
        case portIndex(Int)
        case keyPath(LayerInputType)
    }
}

extension NodeIOPortType_V19.NodeIOPortType: StitchVersionedCodable {
    public init(previousInstance: NodeIOPortType_V19.PreviousInstance) {
        fatalError()
    }
}
