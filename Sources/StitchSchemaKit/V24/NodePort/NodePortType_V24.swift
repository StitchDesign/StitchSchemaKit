//
//  NodeConnectionType_V24.swift
//
//
//  Created by Elliot Boschwitz on 4/2/24.
//

import Foundation

public enum NodeConnectionType_V24: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V24
    public typealias PreviousInstance = NodeConnectionType_V23.NodeConnectionType
    public typealias PortValues = [PortValue_V24.PortValue]
    public typealias NodeIOCoordinate = NodeIOCoordinate_V24.NodeIOCoordinate
    // MARK: - endif
    
    public enum NodeConnectionType: Equatable {
        case values(PortValues)
        case upstreamConnection(NodeIOCoordinate)
    }
}

// TODO: create a type-general version of this accessor?
extension NodeConnectionType_V24.NodeConnectionType {
    var getValues: NodeConnectionType_V24.PortValues? {
        switch self {
        case .values(let values):
            return values
        case .upstreamConnection:
            return nil
        }
    }
    
    var getUpstreamConnection: NodeIOCoordinate_V24.NodeIOCoordinate? {
        switch self {
        case .upstreamConnection(let id):
            return id
        default:
            return nil
        }
    }
}

extension NodeConnectionType_V24.NodeConnectionType: StitchVersionedCodable {
    public init(previousInstance: NodeConnectionType_V24.PreviousInstance) {
        switch previousInstance {
        case .values(let portValues):
            self = .values(NodeConnectionType_V24.PortValues(previousElements: portValues))
        case .upstreamConnection(let upstreamConnection):
            self = .upstreamConnection(NodeConnectionType_V24.NodeIOCoordinate(previousInstance: upstreamConnection))
        }
    }
}
