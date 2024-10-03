//
//  NodeConnectionType_V12.swift
//
//
//  Created by Elliot Boschwitz on 4/2/24.
//

import Foundation

public enum NodeConnectionType_V12: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V12
    public typealias PreviousInstance = NodeConnectionType_V11.NodeConnectionType
    public typealias PortValues = [PortValue_V12.PortValue]
    public typealias NodeIOCoordinate = NodeIOCoordinate_V12.NodeIOCoordinate
    // MARK: - endif
    
    public enum NodeConnectionType: Equatable {
        case values(PortValues)
        case upstreamConnection(NodeIOCoordinate)
    }
}

extension NodeConnectionType_V12.NodeConnectionType: StitchVersionedCodable {
    public init(previousInstance: NodeConnectionType_V12.PreviousInstance) {
        switch previousInstance {
        case .values(let portValues):
            self = .values(NodeConnectionType_V12.PortValues(previousElements: portValues))
        case .upstreamConnection(let upstreamConnection):
            self = .upstreamConnection(NodeConnectionType_V12.NodeIOCoordinate(previousInstance: upstreamConnection))
        }
    }
}
