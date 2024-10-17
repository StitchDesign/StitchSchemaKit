//
//  GroupNodeID_V26.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum GroupNodeID_V26: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V26
    public typealias PreviousInstance = Self.GroupNodeId
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

extension GroupNodeID_V26.GroupNodeId: StitchVersionedCodable {
    public init(previousInstance: GroupNodeID_V26.PreviousInstance) {
        self.init(previousInstance.id)
    }
}
