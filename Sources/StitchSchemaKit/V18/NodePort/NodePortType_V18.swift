//
//  NodeConnectionType_V18.swift
//
//
//  Created by Elliot Boschwitz on 4/2/24.
//

import Foundation

public enum NodeConnectionType_V18: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V18
    public typealias PreviousInstance = NodeConnectionType_V17.NodeConnectionType
    public typealias PortValues = [PortValue_V18.PortValue]
    public typealias NodeIOCoordinate = NodeIOCoordinate_V18.NodeIOCoordinate
    // MARK: - endif
    
    public enum NodeConnectionType: Equatable {
        case values(PortValues)
        case upstreamConnection(NodeIOCoordinate)
    }
}

extension NodeConnectionType_V18.NodeConnectionType: StitchVersionedCodable {
    public init(previousInstance: NodeConnectionType_V18.PreviousInstance) {
        switch previousInstance {
        case .values(let portValues):
            self = .values(NodeConnectionType_V18.PortValues(previousElements: portValues))
        case .upstreamConnection(let upstreamConnection):
            self = .upstreamConnection(NodeConnectionType_V18.NodeIOCoordinate(previousInstance: upstreamConnection))
        }
    }
}
