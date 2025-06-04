//
//  SSKError.swift
//  StitchSchemaKit
//
//  Created by Elliot Boschwitz on 6/3/25.
//

public enum SSKError: Error {
    case nextVersionNotFound(StitchSchemaVersion)
    case migrationFailed(any StitchVersionedCodable)
    case castingToNewestVersionFailed(any StitchVersionedCodable)
}
