//
//  NetworkRequestType_V8.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum NetworkRequestType_V8: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V8
    public typealias PreviousInstance = NetworkRequestType_V7.NetworkRequestType
    // MARK: - endif
    
    public enum NetworkRequestType: String, CaseIterable {
        case get, post // put
    }

}

extension NetworkRequestType_V8.NetworkRequestType: StitchVersionedCodable {
    public init(previousInstance: NetworkRequestType_V8.PreviousInstance) {
        switch previousInstance {
            
        case .get:
            self = .get
        case .post:
            self = .post
        }
    }
}
