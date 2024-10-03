//
//  File.swift
//  
//
//  Created by Elliot Boschwitz on 8/17/24.
//

import Foundation

public enum StitchComponent_V25: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V25
    public typealias PreviousInstance = Self.StitchComponent
    public typealias GraphEntity = GraphEntity_V25.GraphEntity
    public typealias GraphSaveLocation = GraphSaveLocation_V25.GraphSaveLocation
    public typealias SidebarLayerList = [SidebarLayerData_V25.SidebarLayerData]
    // MARK: - end

    public struct StitchComponent: StitchVersionedCodable, Equatable, Sendable {
        // Share location, saved here due to static helpers for sharing
        public var saveLocation: GraphSaveLocation
        public var isPublished: Bool
        public var graph: GraphEntity
        
        public init(saveLocation: GraphSaveLocation,
                    isPublished: Bool,
                    graph: GraphEntity) {
            self.saveLocation = saveLocation
            self.isPublished = isPublished
            self.graph = graph
        }
    }
}

extension StitchComponent_V25.StitchComponent {
    public init(previousInstance: StitchComponent_V25.PreviousInstance) {
        // TODO: fix after version 25 (wasn't encoded ever in version 24)
        fatalError()
    }
}
