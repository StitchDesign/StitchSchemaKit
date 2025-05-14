//
//  GraphDocumentPath_V31.swift
//  StitchSchemaKit
//
//  Created by Elliot Boschwitz on 10/2/24.
//

import Foundation

public enum GraphDocumentPath_V31: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V31
    public typealias PreviousInstance = GraphDocumentPath_V30.GraphDocumentPath
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

extension GraphDocumentPath_V31.GraphDocumentPath {
    public init(previousInstance: GraphDocumentPath_V31.PreviousInstance) {
        self = .init(docId: previousInstance.docId,
                     componentId: previousInstance.componentId,
                     componentsPath: previousInstance.componentsPath)
    }
}
