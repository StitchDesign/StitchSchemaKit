//
//  LayerNodeId_V15.swift
//
//
//  Created by Nicholas Arner on 1/26/24.
//

import Foundation

public enum LayerNodeId_V15: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V15
    public typealias PreviousInstance = LayerNodeId_V14.LayerNodeId
    // MARK: - endif
    

    // a wrapper-type over NodeId, to use in more specific situations
    public struct LayerNodeId: Hashable {
        public let id: NodeId
        
        public init(_ id: UUID) {
            self.id = id
        }
    }


}

extension LayerNodeId_V15.LayerNodeId: StitchVersionedCodable {
    public init(previousInstance: LayerNodeId_V15.PreviousInstance) {
        self.init(previousInstance.id)
    }
}
