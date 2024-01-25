//
//  ScrollMode_V1.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum ScrollMode_V1: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V1
    public typealias PreviousInstance = Self.ScrollMode
    // MARK: - endif
    
    public enum ScrollMode: String, Codable, CaseIterable {
        case free
        case paging
        case disabled
    }

}

extension ScrollMode_V1.ScrollMode: StitchVersionedCodable {
    public init(previousInstance: ScrollMode_V1.PreviousInstance) {
        fatalError()
    }
}
