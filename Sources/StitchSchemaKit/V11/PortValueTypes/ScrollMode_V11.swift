//
//  ScrollMode_V11.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum ScrollMode_V11: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V11
    public typealias PreviousInstance = ScrollMode_V10.ScrollMode
    // MARK: - endif
    
    public enum ScrollMode: String, CaseIterable {
        case free
        case paging
        case disabled
    }

}

extension ScrollMode_V11.ScrollMode: StitchVersionedCodable {
    public init(previousInstance: ScrollMode_V11.PreviousInstance) {
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
