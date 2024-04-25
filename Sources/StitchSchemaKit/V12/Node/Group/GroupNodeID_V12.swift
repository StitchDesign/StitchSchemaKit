//
//  GroupNodeID_V12.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum GroupNodeID_V12: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V12
    public typealias PreviousInstance = Self.GroupNodeId
    // MARK: - endif
    
    public struct GroupNodeId: Equatable, Hashable, Identifiable {
        public let id: NodeId
        
        public init(id: NodeId) {
            self.id = id
        }
        
        public init(_ id: UUID) {
            self.id = id
        }
    }

}

extension GroupNodeID_V12.GroupNodeId: StitchVersionedCodable {
    public init(previousInstance: GroupNodeID_V12.PreviousInstance) {
        self.init(previousInstance.id)
    }
}