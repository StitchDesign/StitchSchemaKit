//
//  GroupNodeID_V22.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum GroupNodeID_V22: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V22
    public typealias PreviousInstance = GroupNodeID_V21.GroupNodeId
    // MARK: - endif
    
    public struct GroupNodeId: Equatable, Hashable, Identifiable {
        public let id: UUID
        
        public init(id: UUID) {
            self.id = id
        }
        
        public init(_ id: UUID) {
            self.id = id
        }
    }

}

extension GroupNodeID_V22.GroupNodeId: StitchVersionedCodable {
    public init(previousInstance: GroupNodeID_V22.PreviousInstance) {
        self.init(previousInstance.id)
    }
}
