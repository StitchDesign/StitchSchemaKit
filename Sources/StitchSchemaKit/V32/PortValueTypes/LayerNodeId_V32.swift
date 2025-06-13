//
//  LayerNodeId_V32.swift
//
//
//  Created by Nicholas Arner on 1/26/24.
//

import Foundation

public enum LayerNodeId_V32: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V32
    public typealias PreviousInstance = LayerNodeId_V31.LayerNodeId
    // MARK: - endif
    
    // a wrapper-type over UUID, to use in more specific situations
    public struct LayerNodeId: Hashable {
        public let id: UUID
        
        public init(_ id: UUID) {
            self.id = id
        }
    }


}

extension LayerNodeId_V32.LayerNodeId: StitchVersionedCodable {
    public init(previousInstance: LayerNodeId_V32.PreviousInstance) {
        self.init(previousInstance.id)
    }
    
    public var asNodeId: UUID {
        self.id
    }
}
