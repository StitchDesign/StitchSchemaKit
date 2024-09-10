//
//  NodeConnectionType_V13.swift
//
//
//  Created by Elliot Boschwitz on 4/2/24.
//

import Foundation

public enum NodeConnectionType_V13: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V13
    public typealias PreviousInstance = NodeConnectionType_V12.NodeConnectionType
    public typealias PortValues = [PortValue_V13.PortValue]
    public typealias NodeIOCoordinate = NodeIOCoordinate_V13.NodeIOCoordinate
    // MARK: - endif
    
    public enum NodeConnectionType: Equatable {
        case values(PortValues)
        case upstreamConnection(NodeIOCoordinate)
    }
}

extension NodeConnectionType_V13.NodeConnectionType: StitchVersionedCodable {
    public init(previousInstance: NodeConnectionType_V13.PreviousInstance) {
        switch previousInstance {
        case .values(let portValues):
            self = .values(NodeConnectionType_V13.PortValues(previousElements: portValues))
        case .upstreamConnection(let upstreamConnection):
            self = .upstreamConnection(NodeConnectionType_V13.NodeIOCoordinate(previousInstance: upstreamConnection))
        }
    }
}
