//
//  NodeConnectionType_V16.swift
//
//
//  Created by Elliot Boschwitz on 4/2/24.
//

import Foundation

public enum NodeConnectionType_V16: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V16
    public typealias PreviousInstance = NodeConnectionType_V15.NodeConnectionType
    public typealias PortValues = [PortValue_V16.PortValue]
    public typealias NodeIOCoordinate = NodeIOCoordinate_V16.NodeIOCoordinate
    // MARK: - endif
    
    public enum NodeConnectionType: Equatable {
        case values(PortValues)
        case upstreamConnection(NodeIOCoordinate)
    }
}

extension NodeConnectionType_V16.NodeConnectionType: StitchVersionedCodable {
    public init(previousInstance: NodeConnectionType_V16.PreviousInstance) {
        switch previousInstance {
        case .values(let portValues):
            self = .values(NodeConnectionType_V16.PortValues(previousElements: portValues))
        case .upstreamConnection(let upstreamConnection):
            self = .upstreamConnection(NodeConnectionType_V16.NodeIOCoordinate(previousInstance: upstreamConnection))
        }
    }
}
