//
//  NodeConnectionType_V14.swift
//
//
//  Created by Elliot Boschwitz on 4/2/24.
//

import Foundation

public enum NodeConnectionType_V14: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V14
    public typealias PreviousInstance = NodeConnectionType_V13.NodeConnectionType
    public typealias PortValues = [PortValue_V14.PortValue]
    public typealias NodeIOCoordinate = NodeIOCoordinate_V14.NodeIOCoordinate
    // MARK: - endif
    
    public enum NodeConnectionType: Equatable {
        case values(PortValues)
        case upstreamConnection(NodeIOCoordinate)
    }
}

extension NodeConnectionType_V14.NodeConnectionType: StitchVersionedCodable {
    public init(previousInstance: NodeConnectionType_V14.PreviousInstance) {
        switch previousInstance {
        case .values(let portValues):
            self = .values(NodeConnectionType_V14.PortValues(previousElements: portValues))
        case .upstreamConnection(let upstreamConnection):
            self = .upstreamConnection(NodeConnectionType_V14.NodeIOCoordinate(previousInstance: upstreamConnection))
        }
    }
}
