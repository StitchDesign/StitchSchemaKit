//
//  NodeConnectionType_V21.swift
//
//
//  Created by Elliot Boschwitz on 4/2/24.
//

import Foundation

public enum NodeConnectionType_V21: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V21
    public typealias PreviousInstance = NodeConnectionType_V20.NodeConnectionType
    public typealias PortValues = [PortValue_V21.PortValue]
    public typealias NodeIOCoordinate = NodeIOCoordinate_V21.NodeIOCoordinate
    // MARK: - endif
    
    public enum NodeConnectionType: Equatable {
        case values(PortValues)
        case upstreamConnection(NodeIOCoordinate)
    }
}

// TODO: create a type-general version of this accessor?
extension NodeConnectionType_V21.NodeConnectionType {
    var getValues: NodeConnectionType_V21.PortValues? {
        switch self {
        case .values(let values):
            return values
        case .upstreamConnection:
            return nil
        }
    }
}

extension NodeConnectionType_V21.NodeConnectionType: StitchVersionedCodable {
    public init(previousInstance: NodeConnectionType_V21.PreviousInstance) {
        switch previousInstance {
        case .values(let portValues):
            self = .values(NodeConnectionType_V21.PortValues(previousElements: portValues))
        case .upstreamConnection(let upstreamConnection):
            self = .upstreamConnection(NodeConnectionType_V21.NodeIOCoordinate(previousInstance: upstreamConnection))
        }
    }
}
