//
//  ScrollMode_V32.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum ScrollMode_V32: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V32
    public typealias PreviousInstance = ScrollMode_V31.ScrollMode
    // MARK: - endif
    
    public enum ScrollMode: String, CaseIterable, Hashable {
        case free
        case paging
        case disabled
    }

}

extension ScrollMode_V32.ScrollMode: StitchVersionedCodable {
    public init(previousInstance: ScrollMode_V32.PreviousInstance) {
        switch previousInstance {
            
        case .free:
            self = .free
        case .paging:
            self = .paging
        case .disabled:
            self = .disabled
        }
    }
}
