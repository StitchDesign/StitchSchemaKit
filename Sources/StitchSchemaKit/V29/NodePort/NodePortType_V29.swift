//
//  NodeConnectionType_V29.swift
//
//
//  Created by Elliot Boschwitz on 4/2/24.
//

import Foundation

public enum NodeConnectionType_V29: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V29
    public typealias PreviousInstance = NodeConnectionType_V28.NodeConnectionType
    public typealias PortValues = [PortValue_V29.PortValue]
    public typealias NodeIOCoordinate = NodeIOCoordinate_V29.NodeIOCoordinate
    // MARK: - endif
    
    public enum NodeConnectionType: Hashable {
        case values(PortValues)
        case upstreamConnection(NodeIOCoordinate)
    }
}

extension NodeConnectionType_V29.NodeConnectionType {
    /// Resets connection data with some PortValue if matching condition.
    mutating func resetUpstreamConnection(with value: PortValue_V29.PortValue,
                                                   willResetCallback: @escaping (NodeIOCoordinate_V29.NodeIOCoordinate) -> Bool) {
        switch self {
        case .upstreamConnection(let connection) where willResetCallback(connection):
            self = .values([value])

        default:
            return
        }
    }
}

extension NodeConnectionType_V29.NodeConnectionType: StitchVersionedCodable {
    public init(previousInstance: NodeConnectionType_V29.PreviousInstance) {
        switch previousInstance {
        case .values(let portValues):
            self = .values(NodeConnectionType_V29.PortValues(previousElements: portValues))
        case .upstreamConnection(let upstreamConnection):
            self = .upstreamConnection(NodeConnectionType_V29.NodeIOCoordinate(previousInstance: upstreamConnection))
        }
    }
}
