//
//  LayerNodeId_V20.swift
//
//
//  Created by Nicholas Arner on 1/26/24.
//

import Foundation

public enum LayerNodeId_V20: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V20
    public typealias PreviousInstance = LayerNodeId_V19.LayerNodeId
    // MARK: - endif
    

    // a wrapper-type over UUID, to use in more specific situations
    public struct LayerNodeId: Hashable {
        public let id: UUID
        
        public init(_ id: UUID) {
            self.id = id
        }
    }


}

extension LayerNodeId_V20.LayerNodeId: StitchVersionedCodable {
    public init(previousInstance: LayerNodeId_V20.PreviousInstance) {
        self.init(previousInstance.id)
    }
}
