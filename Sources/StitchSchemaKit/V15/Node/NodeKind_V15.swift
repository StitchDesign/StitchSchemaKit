//
//  NodeKind.swift
//
//
//  Created by Elliot Boschwitz on 1/24/24.
//

import Foundation

public enum NodeKind_V15: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V15
    public typealias PreviousInstance = NodeKind_V14.NodeKind
    // MARK: - endif
    
    public enum NodeKind: Codable, Equatable, Hashable {
        case patch(Patch), layer(Layer), group
    }
}

extension NodeKind_V15.NodeKind: StitchVersionedCodable {
    public init(previousInstance: NodeKind_V15.PreviousInstance) {
        switch previousInstance {
            
        case .patch(let value):
            self = .patch(value)
        case .layer(let value):
            self = .layer(value)
        case .group:
            self = .group
        }
    }
}
