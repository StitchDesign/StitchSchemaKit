//
//  LayerNodeId_V18.swift
//
//
//  Created by Nicholas Arner on 1/26/24.
//

import Foundation

public enum LayerNodeId_V18: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V18
    public typealias PreviousInstance = LayerNodeId_V17.LayerNodeId
    // MARK: - endif
    

    // a wrapper-type over NodeId, to use in more specific situations
    public struct LayerNodeId: Hashable {
        public let id: NodeId
        
        public init(_ id: UUID) {
            self.id = id
        }
    }


}

extension LayerNodeId_V18.LayerNodeId: StitchVersionedCodable {
    public init(previousInstance: LayerNodeId_V18.PreviousInstance) {
        self.init(previousInstance.id)
    }
}
