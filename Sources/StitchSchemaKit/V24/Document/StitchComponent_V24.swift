//
//  File.swift
//  
//
//  Created by Elliot Boschwitz on 8/17/24.
//

import Foundation


public enum StitchComponent_V24: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static let version = StitchSchemaVersion._V24
    public typealias PreviousInstance = Self.StitchComponent
    public typealias NodeEntity = NodeEntity_V24.NodeEntity
    public typealias SidebarLayerList = [SidebarLayerData_V24.SidebarLayerData]
    // MARK: - end

    public struct StitchComponent: StitchVersionedCodable {
        public var id = UUID()
        public var nodes: [NodeEntity]
        public let orderedSidebarLayers: SidebarLayerList
        
        public init(id: UUID = UUID(),
                    nodes: [NodeEntity],
                    orderedSidebarLayers: SidebarLayerList) {
            self.id = id
            self.nodes = nodes
            self.orderedSidebarLayers = orderedSidebarLayers
        }
    }
}

extension StitchComponent_V24.StitchComponent {
    public init(previousInstance: StitchComponent_V24.PreviousInstance) {
        fatalError()
    }
}
