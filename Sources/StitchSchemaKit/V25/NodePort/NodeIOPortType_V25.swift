//
//  NodeIOPortType_V25.swift
//
//
//  Created by Elliot Boschwitz on 4/3/24.
//

import Foundation

public enum NodeIOPortType_V25: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V25
    public typealias PreviousInstance = NodeIOPortType_V24.NodeIOPortType
    public typealias LayerInputType = LayerInputType_V25.LayerInputType
    // MARK: - endif
    
    public enum NodeIOPortType: Hashable, Equatable {
        case portIndex(Int)
        case keyPath(LayerInputType)
    }
}

extension NodeIOPortType_V25.NodeIOPortType: StitchVersionedCodable {
    public init(previousInstance: NodeIOPortType_V25.PreviousInstance) {
        switch previousInstance {
        case .portIndex(let portIndex):
            self = .portIndex(portIndex)
        case .keyPath(let keyPath):
            self = .keyPath(.init(previousInstance: keyPath))
        }
    }
}
