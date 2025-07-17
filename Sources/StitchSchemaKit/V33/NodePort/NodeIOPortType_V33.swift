//
//  NodeIOPortType_V33.swift
//
//
//  Created by Elliot Boschwitz on 4/3/24.
//

import Foundation

public enum NodeIOPortType_V33: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V33
    public typealias PreviousInstance = NodeIOPortType_V32.NodeIOPortType
    public typealias LayerInputType = LayerInputType_V33.LayerInputType
    // MARK: - endif
    
    public enum NodeIOPortType: Hashable, Equatable {
        case portIndex(Int)
        case keyPath(LayerInputType)
    }
}

extension NodeIOPortType_V33.NodeIOPortType: StitchVersionedCodable {
    public init(previousInstance: NodeIOPortType_V33.PreviousInstance) {
        switch previousInstance {
        case .portIndex(let portIndex):
            self = .portIndex(portIndex)
        case .keyPath(let keyPath):
            self = .keyPath(.init(previousInstance: keyPath))
        }
    }
}
