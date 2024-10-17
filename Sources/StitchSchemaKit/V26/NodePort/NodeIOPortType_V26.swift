//
//  NodeIOPortType_V26.swift
//
//
//  Created by Elliot Boschwitz on 4/3/24.
//

import Foundation

public enum NodeIOPortType_V26: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V26
    public typealias PreviousInstance = NodeIOPortType_V25.NodeIOPortType
    public typealias LayerInputType = LayerInputType_V26.LayerInputType
    // MARK: - endif
    
    public enum NodeIOPortType: Hashable, Equatable {
        case portIndex(Int)
        case keyPath(LayerInputType)
    }
}

extension NodeIOPortType_V26.NodeIOPortType: StitchVersionedCodable {
    public init(previousInstance: NodeIOPortType_V26.PreviousInstance) {
        switch previousInstance {
        case .portIndex(let portIndex):
            self = .portIndex(portIndex)
        case .keyPath(let keyPath):
            self = .keyPath(.init(previousInstance: keyPath))
        }
    }
}
