//
//  SidebarLayerData_V26.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum SidebarLayerData_V26: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V26
    public typealias PreviousInstance = SidebarLayerData_V25.SidebarLayerData
    // MARK: - endif
    
    public struct SidebarLayerData: Hashable {
        public let id: UUID
        public var children: [Self]?
        
        public init(id: UUID, children: [Self]? = nil) {
            self.id = id
            self.children = children
        }
    }
}

extension SidebarLayerData_V26.SidebarLayerData: StitchVersionedCodable {
    public init(previousInstance: SidebarLayerData_V26.PreviousInstance) {
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
