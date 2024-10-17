//
//  NodeConnectionType_V26.swift
//
//
//  Created by Elliot Boschwitz on 4/2/24.
//

import Foundation

public enum NodeConnectionType_V26: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V26
    public typealias PreviousInstance = NodeConnectionType_V25.NodeConnectionType
    public typealias PortValues = [PortValue_V26.PortValue]
    public typealias NodeIOCoordinate = NodeIOCoordinate_V26.NodeIOCoordinate
    // MARK: - endif
    
    public enum NodeConnectionType: Hashable {
        case values(PortValues)
        case upstreamConnection(NodeIOCoordinate)
    }
}

extension NodeConnectionType_V26.NodeConnectionType: StitchVersionedCodable {
    public init(previousInstance: NodeConnectionType_V26.PreviousInstance) {
        switch previousInstance {
        case .values(let portValues):
            self = .values(NodeConnectionType_V26.PortValues(previousElements: portValues))
        case .upstreamConnection(let upstreamConnection):
            self = .upstreamConnection(NodeConnectionType_V26.NodeIOCoordinate(previousInstance: upstreamConnection))
        }
    }
}
