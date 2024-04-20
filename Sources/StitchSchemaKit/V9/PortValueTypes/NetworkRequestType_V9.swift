//
//  NetworkRequestType_V9.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum NetworkRequestType_V9: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V9
    public typealias PreviousInstance = NetworkRequestType_V8.NetworkRequestType
    // MARK: - endif
    
    public enum NetworkRequestType: String, CaseIterable {
        case get, post // put
    }

}

extension NetworkRequestType_V9.NetworkRequestType: StitchVersionedCodable {
    public init(previousInstance: NetworkRequestType_V9.PreviousInstance) {
        switch previousInstance {
            
        case .get:
            self = .get
        case .post:
            self = .post
        }
    }
}
