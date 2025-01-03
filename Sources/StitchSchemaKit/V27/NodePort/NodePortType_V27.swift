//
//  NodeConnectionType_V27.swift
//
//
//  Created by Elliot Boschwitz on 4/2/24.
//

import Foundation

public enum NodeConnectionType_V27: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V27
    public typealias PreviousInstance = NodeConnectionType_V26.NodeConnectionType
    public typealias PortValues = [PortValue_V27.PortValue]
    public typealias NodeIOCoordinate = NodeIOCoordinate_V27.NodeIOCoordinate
    // MARK: - endif
    
    public enum NodeConnectionType: Hashable {
        case values(PortValues)
        case upstreamConnection(NodeIOCoordinate)
    }
}

extension NodeConnectionType_V27.NodeConnectionType: StitchVersionedCodable {
    public init(previousInstance: NodeConnectionType_V27.PreviousInstance) {
        switch previousInstance {
        case .values(let portValues):
            self = .values(NodeConnectionType_V27.PortValues(previousElements: portValues))
        case .upstreamConnection(let upstreamConnection):
            self = .upstreamConnection(NodeConnectionType_V27.NodeIOCoordinate(previousInstance: upstreamConnection))
        }
    }
}
