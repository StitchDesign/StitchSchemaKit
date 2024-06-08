//
//  SidebarLayerData_V5.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum SidebarLayerData_V5: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V5
    public typealias PreviousInstance = SidebarLayerData_V4.SidebarLayerData
    // MARK: - endif
    
    public struct SidebarLayerData: Equatable {
        public let id: UUID
        public var children: [Self]?
        
        public init(id: UUID, children: [Self]? = nil) {
            self.id = id
            self.children = children
        }
    }
}

extension SidebarLayerData_V5.SidebarLayerData: StitchVersionedCodable {
    public init(previousInstance: SidebarLayerData_V5.PreviousInstance) {
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
