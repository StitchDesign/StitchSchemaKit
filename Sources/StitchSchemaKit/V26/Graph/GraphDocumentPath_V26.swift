//
//  GraphDocumentPath_V26.swift
//  StitchSchemaKit
//
//  Created by Elliot Boschwitz on 10/2/24.
//

import Foundation

public enum GraphDocumentPath_V26: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V26
    public typealias PreviousInstance = GraphDocumentPath_V25.GraphDocumentPath
    // MARK: - end

    public struct GraphDocumentPath: Codable, Hashable, Sendable {
        public let docId: UUID
        public var componentId: UUID
        public let componentsPath: [UUID]
        
        public init(docId: UUID,
                    componentId: UUID,
                    componentsPath: [UUID]) {
            self.docId = docId
            self.componentId = componentId
            self.componentsPath = componentsPath
        }
    }
}

extension GraphDocumentPath_V26.GraphDocumentPath {
    public init(previousInstance: GraphDocumentPath_V26.PreviousInstance) {
        // TODO: not migrating during V25 -> V26 because has not yet been released as feature
        fatalError()
    }
}
