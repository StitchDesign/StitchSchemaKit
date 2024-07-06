//
//  NodeConnectionType_V17.swift
//
//
//  Created by Elliot Boschwitz on 4/2/24.
//

import Foundation

public enum NodeConnectionType_V17: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V17
    public typealias PreviousInstance = NodeConnectionType_V16.NodeConnectionType
    public typealias PortValues = [PortValue_V17.PortValue]
    public typealias NodeIOCoordinate = NodeIOCoordinate_V17.NodeIOCoordinate
    // MARK: - endif
    
    public enum NodeConnectionType: Equatable {
        case values(PortValues)
        case upstreamConnection(NodeIOCoordinate)
    }
}

extension NodeConnectionType_V17.NodeConnectionType {
    var getValues: NodeConnectionType_V17.PortValues? {
        switch self {
        case .values(let values):
            return values
        case .upstreamConnection:
            return nil
        }
    }
}

extension NodeConnectionType_V17.NodeConnectionType: StitchVersionedCodable {
    public init(previousInstance: NodeConnectionType_V17.PreviousInstance) {
        switch previousInstance {
        case .values(let portValues):
            self = .values(NodeConnectionType_V17.PortValues(previousElements: portValues))
        case .upstreamConnection(let upstreamConnection):
            self = .upstreamConnection(NodeConnectionType_V17.NodeIOCoordinate(previousInstance: upstreamConnection))
        }
    }
}
