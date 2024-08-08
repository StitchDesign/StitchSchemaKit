//
//  NetworkRequestType_V23.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum NetworkRequestType_V23: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V23
    public typealias PreviousInstance = NetworkRequestType_V22.NetworkRequestType
    // MARK: - endif
    
    public enum NetworkRequestType: String, CaseIterable {
        case get, post // put
    }

}

extension NetworkRequestType_V23.NetworkRequestType: StitchVersionedCodable {
    public init(previousInstance: NetworkRequestType_V23.PreviousInstance) {
        switch previousInstance {
            
        case .get:
            self = .get
        case .post:
            self = .post
        }
    }
}
