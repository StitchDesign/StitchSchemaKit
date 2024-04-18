//
//  NodeConnectionType_V8.swift
//
//
//  Created by Elliot Boschwitz on 4/2/24.
//

import Foundation

public enum NodeConnectionType_V8: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V8
    public typealias PreviousInstance = NodeConnectionType_V7.NodeConnectionType
    public typealias PortValues = [PortValue_V8.PortValue]
    public typealias NodeIOCoordinate = NodeIOCoordinate_V8.NodeIOCoordinate
    // MARK: - endif
    
    public enum NodeConnectionType: Equatable {
        case values(PortValues)
        case upstreamConnection(NodeIOCoordinate)
    }
}

extension NodeConnectionType_V8.NodeConnectionType: StitchVersionedCodable {
    public init(previousInstance: NodeConnectionType_V8.PreviousInstance) {
        switch previousInstance {
        case .values(let portValues):
            self = .values(NodeConnectionType_V8.PortValues(previousElements: portValues))
        case .upstreamConnection(let upstreamConnection):
            self = .upstreamConnection(NodeConnectionType_V8.NodeIOCoordinate(previousInstance: upstreamConnection))
        }
    }
}
