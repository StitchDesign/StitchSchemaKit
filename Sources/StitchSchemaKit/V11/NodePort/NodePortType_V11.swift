//
//  NodeConnectionType_V11.swift
//
//
//  Created by Elliot Boschwitz on 4/2/24.
//

import Foundation

public enum NodeConnectionType_V11: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V11
    public typealias PreviousInstance = NodeConnectionType_V10.NodeConnectionType
    public typealias PortValues = [PortValue_V11.PortValue]
    public typealias NodeIOCoordinate = NodeIOCoordinate_V11.NodeIOCoordinate
    // MARK: - endif
    
    public enum NodeConnectionType: Equatable {
        case values(PortValues)
        case upstreamConnection(NodeIOCoordinate)
    }
}

extension NodeConnectionType_V11.NodeConnectionType: StitchVersionedCodable {
    public init(previousInstance: NodeConnectionType_V11.PreviousInstance) {
        switch previousInstance {
        case .values(let portValues):
            self = .values(NodeConnectionType_V11.PortValues(previousElements: portValues))
        case .upstreamConnection(let upstreamConnection):
            self = .upstreamConnection(NodeConnectionType_V11.NodeIOCoordinate(previousInstance: upstreamConnection))
        }
    }
}
