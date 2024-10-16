//
//  SidebarLayerData_V25.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum SidebarLayerData_V25: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V25
    public typealias PreviousInstance = SidebarLayerData_V24.SidebarLayerData
    // MARK: - endif
    
    public struct SidebarLayerData: Hashable {
        public let id: UUID
        public var children: [Self]?
        public var isExpandedInSidebar: Bool?
        
        public init(id: UUID,
                    children: [Self]? = nil,
                    isExpandedInSidebar: Bool? = nil) {
            self.id = id
            self.children = children
            
            if children != nil {
                // Give expanded state true if new group
                self.isExpandedInSidebar = isExpandedInSidebar ?? true
            } else {
                self.isExpandedInSidebar = isExpandedInSidebar
            }
        }
    }
}

extension SidebarLayerData_V25.SidebarLayerData: StitchVersionedCodable {
    public init(previousInstance: SidebarLayerData_V25.PreviousInstance) {
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
