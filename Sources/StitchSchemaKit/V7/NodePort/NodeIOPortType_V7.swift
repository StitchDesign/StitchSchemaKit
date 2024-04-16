//
//  NodeIOPortType_V7.swift
//
//
//  Created by Elliot Boschwitz on 4/3/24.
//

import Foundation

public enum NodeIOPortType_V7: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V7
    public typealias PreviousInstance = Self.NodeIOPortType
    public typealias LayerInputType = LayerInputType_V7.LayerInputType
    // MARK: - endif
    
    public enum NodeIOPortType: Hashable, Equatable {
        case portIndex(Int)
        case keyPath(LayerInputType)
    }
}

extension NodeIOPortType_V7.NodeIOPortType: StitchVersionedCodable {
    public init(previousInstance: NodeIOPortType_V7.PreviousInstance) {
        fatalError()
    }
}
