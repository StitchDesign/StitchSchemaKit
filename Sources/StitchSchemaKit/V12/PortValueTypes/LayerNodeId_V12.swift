//
//  LayerNodeId_V12.swift
//
//
//  Created by Nicholas Arner on 1/26/24.
//

import Foundation

public enum LayerNodeId_V12: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V12
    public typealias PreviousInstance = LayerNodeId_V10.LayerNodeId
    // MARK: - endif
    

    // a wrapper-type over NodeId, to use in more specific situations
    public struct LayerNodeId: Hashable {
        public let id: NodeId
        
        public init(_ id: UUID) {
            self.id = id
        }
    }


}

extension LayerNodeId_V12.LayerNodeId: StitchVersionedCodable {
    public init(previousInstance: LayerNodeId_V12.PreviousInstance) {
        self.init(previousInstance.id)
    }
}
