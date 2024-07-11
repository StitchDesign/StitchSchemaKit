//
//  NodeConnectionType_V20.swift
//
//
//  Created by Elliot Boschwitz on 4/2/24.
//

import Foundation

public enum NodeConnectionType_V20: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V20
    public typealias PreviousInstance = NodeConnectionType_V19.NodeConnectionType
    public typealias PortValues = [PortValue_V20.PortValue]
    public typealias NodeIOCoordinate = NodeIOCoordinate_V20.NodeIOCoordinate
    // MARK: - endif
    
    public enum NodeConnectionType: Equatable {
        case values(PortValues)
        case upstreamConnection(NodeIOCoordinate)
    }
}

// TODO: create a type-general version of this accessor?
extension NodeConnectionType_V20.NodeConnectionType {
    var getValues: NodeConnectionType_V20.PortValues? {
        switch self {
        case .values(let values):
            return values
        case .upstreamConnection:
            return nil
        }
    }
}

extension NodeConnectionType_V20.NodeConnectionType: StitchVersionedCodable {
    public init(previousInstance: NodeConnectionType_V20.PreviousInstance) {
        switch previousInstance {
        case .values(let portValues):
            self = .values(NodeConnectionType_V20.PortValues(previousElements: portValues))
        case .upstreamConnection(let upstreamConnection):
            self = .upstreamConnection(NodeConnectionType_V20.NodeIOCoordinate(previousInstance: upstreamConnection))
        }
    }
}
