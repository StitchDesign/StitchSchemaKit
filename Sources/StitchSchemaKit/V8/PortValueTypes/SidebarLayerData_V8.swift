//
//  SidebarLayerData_V8.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum SidebarLayerData_V8: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V8
    public typealias PreviousInstance = SidebarLayerData_V7.SidebarLayerData
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

extension SidebarLayerData_V8.SidebarLayerData: StitchVersionedCodable {
    public init(previousInstance: SidebarLayerData_V8.PreviousInstance) {
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
