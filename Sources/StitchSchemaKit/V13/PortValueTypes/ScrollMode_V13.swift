//
//  ScrollMode_V13.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum ScrollMode_V13: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V13
    public typealias PreviousInstance = ScrollMode_V12.ScrollMode
    // MARK: - endif
    
    public enum ScrollMode: String, CaseIterable {
        case free
        case paging
        case disabled
    }

}

extension ScrollMode_V13.ScrollMode: StitchVersionedCodable {
    public init(previousInstance: ScrollMode_V13.PreviousInstance) {
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
