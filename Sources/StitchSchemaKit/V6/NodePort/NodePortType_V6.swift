//
//  NodeConnectionType_V6.swift
//
//
//  Created by Elliot Boschwitz on 4/2/24.
//

import Foundation

public enum NodeConnectionType_V6: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V6
    public typealias PreviousInstance = Self.NodeConnectionType
    public typealias PortValues = [PortValue_V6.PortValue]
    public typealias NodeIOCoordinate = NodeIOCoordinate_V6.NodeIOCoordinate
    // MARK: - endif
    
    public enum NodeConnectionType: Equatable {
        case values(PortValues)
        case upstreamConnection(NodeIOCoordinate)
    }
}

extension NodeConnectionType_V6.NodeConnectionType: StitchVersionedCodable {
    public init(previousInstance: NodeConnectionType_V6.PreviousInstance) {
        fatalError()
    }
}
