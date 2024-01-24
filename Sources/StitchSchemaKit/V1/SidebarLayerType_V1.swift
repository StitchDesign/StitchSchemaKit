//
//  SidebarLayerType_V1.swift
//  
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum SidebarLayerType_V1: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V1
    public typealias PreviousInstance = Self.SidebarLayerType
    // MARK: - endif
    
    public enum SidebarLayerType: Equatable {
        case layer(NodeId)
        case group(SidebarLayerGroupData)
    }


}

extension SidebarLayerType_V1.SidebarLayerType: StitchVersionedCodable {
    public init(previousInstance: GroupNodeID_V1.PreviousInstance) {
        fatalError()
    }
}
