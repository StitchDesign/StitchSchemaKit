//
//  NodeConnectionType_V30.swift
//
//
//  Created by Elliot Boschwitz on 4/2/24.
//

import Foundation

public enum NodeConnectionType_V30: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V30
    public typealias PreviousInstance = NodeConnectionType_V29.NodeConnectionType
    public typealias PortValues = [PortValue_V30.PortValue]
    public typealias NodeIOCoordinate = NodeIOCoordinate_V30.NodeIOCoordinate
    // MARK: - endif
    
    public enum NodeConnectionType: Hashable {
        case values(PortValues)
        case upstreamConnection(NodeIOCoordinate)
    }
}

extension NodeConnectionType_V30.NodeConnectionType {
    /// Resets connection data with some PortValue if matching condition.
    mutating func resetUpstreamConnection(with value: PortValue_V30.PortValue,
                                                   willResetCallback: @escaping (NodeIOCoordinate_V30.NodeIOCoordinate) -> Bool) {
        switch self {
        case .upstreamConnection(let connection) where willResetCallback(connection):
            self = .values([value])

        default:
            return
        }
    }
}

extension NodeConnectionType_V30.NodeConnectionType: StitchVersionedCodable {
    public init(previousInstance: NodeConnectionType_V30.PreviousInstance) {
        switch previousInstance {
        case .values(let portValues):
            self = .values(NodeConnectionType_V30.PortValues(previousElements: portValues))
        case .upstreamConnection(let upstreamConnection):
            self = .upstreamConnection(NodeConnectionType_V30.NodeIOCoordinate(previousInstance: upstreamConnection))
        }
    }
}
