//
//  SidebarLayerData_V28.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum SidebarLayerData_V28: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V28
    public typealias PreviousInstance = SidebarLayerData_V27.SidebarLayerData
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

extension SidebarLayerData_V28.SidebarLayerData: StitchVersionedCodable {
    public init(previousInstance: SidebarLayerData_V28.PreviousInstance) {
        guard let prevChildren = previousInstance.children else {
            self.init(id: previousInstance.id,
                      children: nil)
            return
        }
        
        let migratedChildren: [Self] = .init(previousElements: prevChildren)
        self.init(id: previousInstance.id,
                  children: migratedChildren,
                  
                  // TODO: use previousInstance data after version 27
                  isExpandedInSidebar: true)
    }
}
