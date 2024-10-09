//
//  NodeConnectionType_V25.swift
//
//
//  Created by Elliot Boschwitz on 4/2/24.
//

import Foundation

public enum NodeConnectionType_V25: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V25
    public typealias PreviousInstance = NodeConnectionType_V24.NodeConnectionType
    public typealias PortValues = [PortValue_V25.PortValue]
    public typealias NodeIOCoordinate = NodeIOCoordinate_V25.NodeIOCoordinate
    // MARK: - endif
    
    public enum NodeConnectionType: Hashable {
        case values(PortValues)
        case upstreamConnection(NodeIOCoordinate)
    }
}

extension NodeConnectionType_V25.NodeConnectionType: StitchVersionedCodable {
    public init(previousInstance: NodeConnectionType_V25.PreviousInstance) {
        switch previousInstance {
        case .values(let portValues):
            self = .values(NodeConnectionType_V25.PortValues(previousElements: portValues))
        case .upstreamConnection(let upstreamConnection):
            self = .upstreamConnection(NodeConnectionType_V25.NodeIOCoordinate(previousInstance: upstreamConnection))
        }
    }
}
