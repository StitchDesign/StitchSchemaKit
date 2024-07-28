//
//  NetworkRequestType_V22.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum NetworkRequestType_V22: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V22
    public typealias PreviousInstance = NetworkRequestType_V21.NetworkRequestType
    // MARK: - endif
    
    public enum NetworkRequestType: String, CaseIterable {
        case get, post // put
    }

}

extension NetworkRequestType_V22.NetworkRequestType: StitchVersionedCodable {
    public init(previousInstance: NetworkRequestType_V22.PreviousInstance) {
        switch previousInstance {
            
        case .get:
            self = .get
        case .post:
            self = .post
        }
    }
}
