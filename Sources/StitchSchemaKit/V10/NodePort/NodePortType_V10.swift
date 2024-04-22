//
//  NodeConnectionType_V10.swift
//
//
//  Created by Elliot Boschwitz on 4/2/24.
//

import Foundation

public enum NodeConnectionType_V10: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V10
    public typealias PreviousInstance = NodeConnectionType_V9.NodeConnectionType
    public typealias PortValues = [PortValue_V10.PortValue]
    public typealias NodeIOCoordinate = NodeIOCoordinate_V10.NodeIOCoordinate
    // MARK: - endif
    
    public enum NodeConnectionType: Equatable {
        case values(PortValues)
        case upstreamConnection(NodeIOCoordinate)
    }
}

extension NodeConnectionType_V10.NodeConnectionType: StitchVersionedCodable {
    public init(previousInstance: NodeConnectionType_V10.PreviousInstance) {
        switch previousInstance {
        case .values(let portValues):
            self = .values(NodeConnectionType_V10.PortValues(previousElements: portValues))
        case .upstreamConnection(let upstreamConnection):
            self = .upstreamConnection(NodeConnectionType_V10.NodeIOCoordinate(previousInstance: upstreamConnection))
        }
    }
}
