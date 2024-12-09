//
//  NodeConnectionType_V28.swift
//
//
//  Created by Elliot Boschwitz on 4/2/24.
//

import Foundation

public enum NodeConnectionType_V28: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V28
    public typealias PreviousInstance = NodeConnectionType_V27.NodeConnectionType
    public typealias PortValues = [PortValue_V28.PortValue]
    public typealias NodeIOCoordinate = NodeIOCoordinate_V28.NodeIOCoordinate
    // MARK: - endif
    
    public enum NodeConnectionType: Hashable {
        case values(PortValues)
        case upstreamConnection(NodeIOCoordinate)
    }
}

extension NodeConnectionType_V28.NodeConnectionType: StitchVersionedCodable {
    public init(previousInstance: NodeConnectionType_V28.PreviousInstance) {
        switch previousInstance {
        case .values(let portValues):
            self = .values(NodeConnectionType_V28.PortValues(previousElements: portValues))
        case .upstreamConnection(let upstreamConnection):
            self = .upstreamConnection(NodeConnectionType_V28.NodeIOCoordinate(previousInstance: upstreamConnection))
        }
    }
}
