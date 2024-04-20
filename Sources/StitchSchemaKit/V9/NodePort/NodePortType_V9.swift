//
//  NodeConnectionType_V9.swift
//
//
//  Created by Elliot Boschwitz on 4/2/24.
//

import Foundation

public enum NodeConnectionType_V9: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V9
    public typealias PreviousInstance = NodeConnectionType_V8.NodeConnectionType
    public typealias PortValues = [PortValue_V9.PortValue]
    public typealias NodeIOCoordinate = NodeIOCoordinate_V9.NodeIOCoordinate
    // MARK: - endif
    
    public enum NodeConnectionType: Equatable {
        case values(PortValues)
        case upstreamConnection(NodeIOCoordinate)
    }
}

extension NodeConnectionType_V9.NodeConnectionType: StitchVersionedCodable {
    public init(previousInstance: NodeConnectionType_V9.PreviousInstance) {
        switch previousInstance {
        case .values(let portValues):
            self = .values(NodeConnectionType_V9.PortValues(previousElements: portValues))
        case .upstreamConnection(let upstreamConnection):
            self = .upstreamConnection(NodeConnectionType_V9.NodeIOCoordinate(previousInstance: upstreamConnection))
        }
    }
}
