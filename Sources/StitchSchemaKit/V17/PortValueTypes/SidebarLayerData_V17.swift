//
//  SidebarLayerData_V17.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum SidebarLayerData_V17: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V17
    public typealias PreviousInstance = SidebarLayerData_V16.SidebarLayerData
    // MARK: - endif
    
    public struct SidebarLayerData: Equatable, Hashable {
        public let id: UUID
        public var children: [Self]?
        
        public init(id: UUID, children: [Self]? = nil) {
            self.id = id
            self.children = children
        }
    }
}

extension SidebarLayerData_V17.SidebarLayerData: StitchVersionedCodable {
    public init(previousInstance: SidebarLayerData_V17.PreviousInstance) {
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
