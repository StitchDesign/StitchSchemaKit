//
//  NodeConnectionType_V7.swift
//
//
//  Created by Elliot Boschwitz on 4/2/24.
//

import Foundation

public enum NodeConnectionType_V7: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V7
    public typealias PreviousInstance = NodeConnectionType_V6.NodeConnectionType
    public typealias PortValues = [PortValue_V7.PortValue]
    public typealias NodeIOCoordinate = NodeIOCoordinate_V7.NodeIOCoordinate
    // MARK: - endif
    
    public enum NodeConnectionType: Equatable {
        case values(PortValues)
        case upstreamConnection(NodeIOCoordinate)
    }
}

extension NodeConnectionType_V7.NodeConnectionType: StitchVersionedCodable {
    public init(previousInstance: NodeConnectionType_V7.PreviousInstance) {
        switch previousInstance {
        case .values(let portValues):
            self = .values(NodeConnectionType_V7.PortValues(previousElements: portValues))
        case .upstreamConnection(let upstreamConnection):
            self = .upstreamConnection(NodeConnectionType_V7.NodeIOCoordinate(previousInstance: upstreamConnection))
        }
    }
}
