//
//  ScrollMode_V26.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum ScrollMode_V26: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V26
    public typealias PreviousInstance = ScrollMode_V25.ScrollMode
    // MARK: - endif
    
    public enum ScrollMode: String, CaseIterable, Hashable {
        case free
        case paging
        case disabled
    }

}

extension ScrollMode_V26.ScrollMode: StitchVersionedCodable {
    public init(previousInstance: ScrollMode_V26.PreviousInstance) {
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
