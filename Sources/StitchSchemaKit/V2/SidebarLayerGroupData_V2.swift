//
//  File.swift
//  
//
//  Created by Nicholas Arner on 1/27/24.
//

import Foundation

public enum SidebarLayerGroupData_V2: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V2
    public typealias PreviousInstance = SidebarLayerGroupData_V1.SidebarLayerGroupData
    // MARK: - endif
 

    public struct SidebarLayerGroupData: Equatable {
        public let id: NodeId
        public var sortedChildren: [SidebarLayerType]
        
        public init(id: NodeId, sortedChildren: [SidebarLayerType]) {
            self.id = id
            self.sortedChildren = sortedChildren
        }
    }

}

extension SidebarLayerGroupData_V2.SidebarLayerGroupData: StitchVersionedCodable {
    public init(previousInstance: SidebarLayerGroupData_V2.PreviousInstance) {
        self.init(id: previousInstance.id, sortedChildren: previousInstance.sortedChildren)
    }
}
