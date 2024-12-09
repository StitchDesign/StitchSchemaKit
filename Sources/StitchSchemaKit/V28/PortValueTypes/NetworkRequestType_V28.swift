//
//  NetworkRequestType_V28.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum NetworkRequestType_V28: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V28
    public typealias PreviousInstance = NetworkRequestType_V27.NetworkRequestType
    // MARK: - endif
    
    public enum NetworkRequestType: String, CaseIterable, Hashable {
        case get, post // put
    }

}

extension NetworkRequestType_V28.NetworkRequestType: StitchVersionedCodable {
    public init(previousInstance: NetworkRequestType_V28.PreviousInstance) {
        switch previousInstance {
            
        case .get:
            self = .get
        case .post:
            self = .post
        }
    }
}
