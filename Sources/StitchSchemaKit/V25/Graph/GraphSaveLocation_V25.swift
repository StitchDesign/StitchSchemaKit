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
    // MARK: - end

    public enum GraphSaveLocation: Equatable, Sendable {
        case document(GraphDocumentPath)
        case userLibrary
        // TODO: system
        //case system(UUID)
    }
}

extension GraphSaveLocation_V25.GraphSaveLocation {
    public init(previousInstance: GraphSaveLocation_V25.PreviousInstance) {
        // TODO: fix after version 25 (wasn't encoded ever in version 24)
        fatalError()
    }
}
