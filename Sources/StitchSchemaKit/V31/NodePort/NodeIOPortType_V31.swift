//
//  NodeIOPortType_V31.swift
//
//
//  Created by Elliot Boschwitz on 4/3/24.
//

import Foundation

public enum NodeIOPortType_V31: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V31
    public typealias PreviousInstance = NodeIOPortType_V30.NodeIOPortType
    public typealias LayerInputType = LayerInputType_V31.LayerInputType
    // MARK: - endif
    
    public enum NodeIOPortType: Hashable, Equatable {
        case portIndex(Int)
        case keyPath(LayerInputType)
    }
}

extension NodeIOPortType_V31.NodeIOPortType: StitchVersionedCodable {
    public init(previousInstance: NodeIOPortType_V31.PreviousInstance) {
        switch previousInstance {
        case .portIndex(let portIndex):
            self = .portIndex(portIndex)
        case .keyPath(let keyPath):
            self = .keyPath(.init(previousInstance: keyPath))
        }
    }
}
