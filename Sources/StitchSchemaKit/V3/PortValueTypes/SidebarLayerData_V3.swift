//
//  SidebarLayerData_V3.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum SidebarLayerData_V3: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V3
    public typealias PreviousInstance = SidebarLayerData_V1.SidebarLayerData
    // MARK: - endif
    
    public struct SidebarLayerData: Equatable {
        public let id: NodeId
        public var children: [Self]?
        
        public init(id: NodeId, children: [Self]? = nil) {
            self.id = id
            self.children = children
        }
    }
}

extension SidebarLayerData_V3.SidebarLayerData: StitchVersionedCodable {
    public init(previousInstance: SidebarLayerData_V3.PreviousInstance) {
        guard let prevChildren = previousInstance.children else {
            self.init(id: previousInstance.id,
                      children: nil)
            return
        }
        
        let migratedChildren: [Self] = .init(previousElements: prevChildren)
        self.init(id: previousInstance.id,
                  children: migratedChildren)
    }
}
