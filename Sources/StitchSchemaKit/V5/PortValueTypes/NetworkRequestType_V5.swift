//
//  NetworkRequestType_V5.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum NetworkRequestType_V5: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V5
    public typealias PreviousInstance = NetworkRequestType_V4.NetworkRequestType
    // MARK: - endif
    
    public enum NetworkRequestType: String, CaseIterable {
        case get, post // put
    }

}

extension NetworkRequestType_V5.NetworkRequestType: StitchVersionedCodable {
    public init(previousInstance: NetworkRequestType_V5.PreviousInstance) {
        switch previousInstance {
            
        case .get:
            self = .get
        case .post:
            self = .post
        }
    }
}
