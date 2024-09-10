//
//  NodeConnectionType_V23.swift
//
//
//  Created by Elliot Boschwitz on 4/2/24.
//

import Foundation

public enum NodeConnectionType_V23: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V23
    public typealias PreviousInstance = NodeConnectionType_V22.NodeConnectionType
    public typealias PortValues = [PortValue_V23.PortValue]
    public typealias NodeIOCoordinate = NodeIOCoordinate_V23.NodeIOCoordinate
    // MARK: - endif
    
    public enum NodeConnectionType: Equatable {
        case values(PortValues)
        case upstreamConnection(NodeIOCoordinate)
    }
}

// TODO: create a type-general version of this accessor?
extension NodeConnectionType_V23.NodeConnectionType {
    var getValues: NodeConnectionType_V23.PortValues? {
        switch self {
        case .values(let values):
            return values
        case .upstreamConnection:
            return nil
        }
    }
    
    var getUpstreamConnection: NodeIOCoordinate_V23.NodeIOCoordinate? {
        switch self {
        case .upstreamConnection(let id):
            return id
        default:
            return nil
        }
    }
}

extension NodeConnectionType_V23.NodeConnectionType: StitchVersionedCodable {
    public init(previousInstance: NodeConnectionType_V23.PreviousInstance) {
        switch previousInstance {
        case .values(let portValues):
            self = .values(NodeConnectionType_V23.PortValues(previousElements: portValues))
        case .upstreamConnection(let upstreamConnection):
            self = .upstreamConnection(NodeConnectionType_V23.NodeIOCoordinate(previousInstance: upstreamConnection))
        }
    }
}
