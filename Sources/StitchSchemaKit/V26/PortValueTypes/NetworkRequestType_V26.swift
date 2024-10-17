//
//  NetworkRequestType_V26.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum NetworkRequestType_V26: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V26
    public typealias PreviousInstance = NetworkRequestType_V25.NetworkRequestType
    // MARK: - endif
    
    public enum NetworkRequestType: String, CaseIterable, Hashable {
        case get, post // put
    }

}

extension NetworkRequestType_V26.NetworkRequestType: StitchVersionedCodable {
    public init(previousInstance: NetworkRequestType_V26.PreviousInstance) {
        switch previousInstance {
            
        case .get:
            self = .get
        case .post:
            self = .post
        }
    }
}
