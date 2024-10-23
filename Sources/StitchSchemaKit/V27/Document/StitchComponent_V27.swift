//
//  File.swift
//  
//
//  Created by Elliot Boschwitz on 8/17/24.
//

import Foundation

public enum StitchComponent_V27: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V27
    public typealias PreviousInstance = StitchComponent_V26.StitchComponent
    public typealias GraphEntity = GraphEntity_V27.GraphEntity
    public typealias GraphSaveLocation = GraphSaveLocation_V27.GraphSaveLocation
    public typealias SidebarLayerList = [SidebarLayerData_V27.SidebarLayerData]
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

extension StitchComponent_V27.StitchComponent {
    public init(previousInstance: StitchComponent_V27.PreviousInstance) {
        self = .init(saveLocation: .init(previousInstance: previousInstance.saveLocation),
                     graph: .init(previousInstance: previousInstance.graph))
    }
}
