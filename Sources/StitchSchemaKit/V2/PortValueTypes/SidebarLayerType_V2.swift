//
//  SidebarLayerType_V2.swift
//  
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum SidebarLayerType_V2: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V2
    public typealias PreviousInstance = Self.SidebarLayerType
    // MARK: - endif
    
    public enum SidebarLayerType: Equatable {
        case layer(NodeId)
        case group(SidebarLayerGroupData)
    }


}

extension SidebarLayerType_V2.SidebarLayerType: StitchVersionedCodable {
    public init(previousInstance: SidebarLayerType_V2.PreviousInstance) {
        fatalError()
    }
}
