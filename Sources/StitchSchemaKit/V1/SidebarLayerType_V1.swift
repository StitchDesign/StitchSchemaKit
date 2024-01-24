//
//  SidebarLayerType_V1.swift
//  
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum SidebarLayerType_V1: Codable, Equatable {
    case layer(NodeId)
    case group(SidebarLayerGroupData)
}
