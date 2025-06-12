//
//  StitchAINodeKindDescription_V32.swift
//  StitchSchemaKit
//
//  Created by Elliot Boschwitz on 6/2/25.
//

import Foundation

//public enum StitchAINodeKindDescription_V32: StitchSchemaVersionable {
//    // MARK: - ensure versions are correct
//    public static let version: StitchSchemaVersion = StitchSchemaVersion._V31
//    public typealias PreviousInstance = StitchAINodeKindDescription_V31.StitchAINodeKindDescription
//    // MARK: - endif
//    
//    public struct StitchAINodeKindDescription {
//        public var nodeKind: String
//        public var description: String
//    }
//}
//
//extension StitchAINodeKindDescription_V32.StitchAINodeKindDescription: StitchVersionedCodable {
//    public init(previousInstance: StitchAINodeKindDescription_V32.PreviousInstance) {
//        self = .init(nodeKind: previousInstance.nodeKind,
//                     description: previousInstance.description)
//    }
//}
//
//extension NodeKindDescribable_V32.NodeKindDescribable {
//    public static var allAiDescriptions: [StitchAINodeKindDescription_V32.StitchAINodeKindDescription] {
//        Self.allCases.map {
//            .init(nodeKind: $0.aiDisplayTitle,
//                  description: $0.aiNodeDescription)
//        }
//    }
//}
