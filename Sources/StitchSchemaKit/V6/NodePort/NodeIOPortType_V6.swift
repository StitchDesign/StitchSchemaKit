//
//  NodeIOPortType_V6.swift
//
//
//  Created by Elliot Boschwitz on 4/3/24.
//

import Foundation

public enum NodeIOPortType_V6: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V6
    public typealias PreviousInstance = Self.NodeIOPortType
    public typealias LayerInputType = LayerInputType_V6.LayerInputType
    // MARK: - endif
    
    public enum NodeIOPortType: Hashable, Equatable {
        case patch(Int)
        case layer(LayerInputType)
    }
}

extension NodeIOPortType_V6.NodeIOPortType: StitchVersionedCodable {
    public init(previousInstance: NodeIOPortType_V6.PreviousInstance) {
        fatalError()
    }
}
