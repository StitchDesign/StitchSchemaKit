//
//  SidebarLayerData_V1.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum SidebarLayerData_V1: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V1
    public typealias PreviousInstance = Self.SidebarLayerData
    // MARK: - endif
    
    public struct SidebarLayerData: Equatable {
        public let id: UUID
        public var children: [SidebarLayerData]?
        
        public init(id: UUID, children: [SidebarLayerData]? = nil) {
            self.id = id
            self.children = children
        }
    }
}

extension SidebarLayerData_V1.SidebarLayerData: StitchVersionedCodable {
    public init(previousInstance: SidebarLayerData_V1.PreviousInstance) {
        fatalError()
    }
}
