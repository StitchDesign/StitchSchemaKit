//
//  File.swift
//  
//
//  Created by Nicholas Arner on 1/27/24.
//

import Foundation

public enum SidebarLayerGroupData_V1: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V1
    public typealias PreviousInstance = Self.SidebarLayerGroupData
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

extension SidebarLayerGroupData_V1.SidebarLayerGroupData: StitchVersionedCodable {
    public init(previousInstance: SidebarLayerGroupData_V1.PreviousInstance) {
        fatalError()
    }
}
