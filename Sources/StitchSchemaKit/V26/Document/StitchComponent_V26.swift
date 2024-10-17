//
//  File.swift
//  
//
//  Created by Elliot Boschwitz on 8/17/24.
//

import Foundation

public enum StitchComponent_V26: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V26
    public typealias PreviousInstance = StitchComponent_V25.StitchComponent
    public typealias GraphEntity = GraphEntity_V26.GraphEntity
    public typealias GraphSaveLocation = GraphSaveLocation_V26.GraphSaveLocation
    public typealias SidebarLayerList = [SidebarLayerData_V26.SidebarLayerData]
    // MARK: - end

    public struct StitchComponent: StitchVersionedCodable, Hashable, Sendable {
        // Share location, saved here due to static helpers for sharing
        public var saveLocation: GraphSaveLocation
        public var graph: GraphEntity
        
        public init(saveLocation: GraphSaveLocation,
                    graph: GraphEntity) {
            self.saveLocation = saveLocation
            self.graph = graph
        }
    }
}

extension StitchComponent_V26.StitchComponent {
    public init(previousInstance: StitchComponent_V26.PreviousInstance) {
        // Note: not migrating during V25 -> V26 because has not yet been released as feature
        fatalError()
    }
}
