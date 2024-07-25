//
//  NodeIOPortType_V22.swift
//
//
//  Created by Elliot Boschwitz on 4/3/24.
//

import Foundation

public enum NodeIOPortType_V22: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V22
    public typealias PreviousInstance = NodeIOPortType_V21.NodeIOPortType
    public typealias LayerInputType = LayerInputType_V22.LayerInputType
    // MARK: - endif
    
    public enum NodeIOPortType: Hashable, Equatable {
        case portIndex(Int)
        case keyPath(LayerInputType)
    }
}

extension NodeIOPortType_V22.NodeIOPortType: StitchVersionedCodable {
    public init(previousInstance: NodeIOPortType_V22.PreviousInstance) {
        switch previousInstance {
        case .portIndex(let x):
            self = .portIndex(x)
        case .keyPath(let x):
            self = .keyPath(.init(previousInstance: x))
        }
    }
}
