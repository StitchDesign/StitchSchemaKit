//
//  File.swift
//  
//
//  Created by Elliot Boschwitz on 8/17/24.
//

import Foundation

public enum StitchComponent_V31: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V31
    public typealias PreviousInstance = StitchComponent_V30.StitchComponent
    public typealias GraphEntity = GraphEntity_V31.GraphEntity
    public typealias GraphSaveLocation = GraphSaveLocation_V31.GraphSaveLocation
    public typealias SidebarLayerList = [SidebarLayerData_V31.SidebarLayerData]
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

extension StitchComponent_V31.StitchComponent {
    public init(previousInstance: StitchComponent_V31.PreviousInstance) {
        self = .init(saveLocation: .init(previousInstance: previousInstance.saveLocation),
                     graph: .init(previousInstance: previousInstance.graph))
    }
}
