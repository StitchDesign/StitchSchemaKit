//
//  GraphSaveLocation_V25.swift
//  StitchSchemaKit
//
//  Created by Elliot Boschwitz on 10/2/24.
//

import Foundation

public enum GraphSaveLocation_V25: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V25
    public typealias PreviousInstance = Self.GraphSaveLocation
    public typealias GraphDocumentPath = GraphDocumentPath_V25.GraphDocumentPath
    public typealias StitchSystemType = StitchSystemType_V25.StitchSystemType
    // MARK: - end
    
    public enum GraphSaveLocation: Codable, Hashable, Sendable {
        case document(UUID)
        case localComponent(GraphDocumentPath)
        case systemComponent(StitchSystemType, UUID)
        case system(StitchSystemType)
    }
}

extension GraphSaveLocation_V25.GraphSaveLocation {
    public init(previousInstance: GraphSaveLocation_V25.PreviousInstance) {
        // TODO: fix after version 25 (wasn't encoded ever in version 24)
        fatalError()
    }
}
