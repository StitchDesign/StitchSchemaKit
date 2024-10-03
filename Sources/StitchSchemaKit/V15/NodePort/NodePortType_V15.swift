//
//  NodeConnectionType_V15.swift
//
//
//  Created by Elliot Boschwitz on 4/2/24.
//

import Foundation

public enum NodeConnectionType_V15: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V15
    public typealias PreviousInstance = NodeConnectionType_V14.NodeConnectionType
    public typealias PortValues = [PortValue_V15.PortValue]
    public typealias NodeIOCoordinate = NodeIOCoordinate_V15.NodeIOCoordinate
    // MARK: - endif
    
    public enum NodeConnectionType: Equatable {
        case values(PortValues)
        case upstreamConnection(NodeIOCoordinate)
    }
}

extension NodeConnectionType_V15.NodeConnectionType: StitchVersionedCodable {
    public init(previousInstance: NodeConnectionType_V15.PreviousInstance) {
        switch previousInstance {
        case .values(let portValues):
            self = .values(NodeConnectionType_V15.PortValues(previousElements: portValues))
        case .upstreamConnection(let upstreamConnection):
            self = .upstreamConnection(NodeConnectionType_V15.NodeIOCoordinate(previousInstance: upstreamConnection))
        }
    }
}
