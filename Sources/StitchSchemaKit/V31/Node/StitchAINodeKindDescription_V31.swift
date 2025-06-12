//
//  StitchAINodeKindDescription_V31.swift
//  StitchSchemaKit
//
//  Created by Elliot Boschwitz on 6/2/25.
//

import Foundation

public enum StitchAINodeKindDescription_V31: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V31
    public typealias PreviousInstance = Self.StitchAINodeKindDescription
    // MARK: - endif
    
    public struct StitchAINodeKindDescription {
        public var nodeKind: String
        public var description: String
    }
}

extension StitchAINodeKindDescription_V31.StitchAINodeKindDescription: StitchVersionedCodable {
    public init(previousInstance: StitchAINodeKindDescription_V31.PreviousInstance) {
        fatalError()
    }
}

//extension NodeKindDescribable_V31.NodeKindDescribable {
//    public static var allAiDescriptions: [StitchAINodeKindDescription_V31.StitchAINodeKindDescription] {
//        Self.allCases.map {
//            .init(nodeKind: $0.aiDisplayTitle,
//                  description: $0.aiNodeDescription)
//        }
//    }
//}
