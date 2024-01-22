//
//  SchemaVersionUtil.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 11/8/23.
//

import Foundation
import SwiftUI

protocol StitchSchemaVersionable {
    static var version: StitchSchemaVersion { get }
}

protocol StitchSchemaVersionType {
    associatedtype NewestVersionType: StitchVersionedCodable

    var version: StitchSchemaVersion { get }

    var codableType: any StitchVersionedCodable.Type { get }

    static func getCodableType(from version: StitchSchemaVersion) -> any StitchVersionedCodable.Type
}

extension StitchSchemaVersionType {
    func decode(_ data: Data) throws -> any StitchVersionedCodable {
        let decoder = getStitchDecoder()
        let type = self.codableType
        return try decoder.decode(type.self, from: data)
    }

    var codableType: any StitchVersionedCodable.Type {
        Self.getCodableType(from: self.version)
    }
}

struct StitchVersionedData: Codable {
    let version: StitchSchemaVersion
    let data: Data
}

extension StitchSchemaVersionType {
    func migrate(versionedCodable: StitchVersionedData) throws -> Self.NewestVersionType? {
        // 1. get version
        // 2. call decode with payload
        // 3. get next type
        // 4. call next type's init with decoded data
        // 5. encode, rinse and repeat
        // 6. return when casting successful on newest type

        let newestVersion = StitchSchemaVersion.getNewestVersion()
        var currentVersion = versionedCodable.version
        var currentEntity: any StitchVersionedCodable = try self.decode(versionedCodable.data)

        // continue so long as current version doesn't match newest
        while currentVersion != newestVersion {
            guard let nextVersion = StitchSchemaVersion.getNextVersion(currentVersion) else {
                return nil
            }

            let nextType = Self.getCodableType(from: nextVersion)

            currentVersion = nextVersion
            currentEntity = nextType.init(anyCodable: currentEntity)
        }

        return currentEntity as? Self.NewestVersionType
    }
}

extension StitchVersionedCodable {
    //    static func createVersionedEntities(from models: [Self.ViewModel]) -> [Self] {
    //        models.map { Self.init(from: $0) }
    //    }

    static func upgradeEntities(_ previousEntities: [Self.PreviousCodable]) -> [Self] {
        previousEntities.map { Self.init(previousInstance: $0) }
    }
}

extension StitchVersionedData {
    /// Initializer that uses current version.
    init(currentDoc: StitchDocument) throws {
        let encoder = getStitchEncoder()
        let encodedDoc = try encoder.encode(currentDoc)

        self.version = StitchSchemaVersion.getNewestVersion()
        self.data = encodedDoc
    }
}

protocol StitchVersionedCodable: Codable, Identifiable, Sendable {
    // associatedtype Version: StitchSchemaVersionType
    //    associatedtype ViewModel: Observable
    associatedtype PreviousCodable: StitchVersionedCodable

    // TODO: only needed on current
    //    init(from viewModel: ViewModel)
    init(previousInstance: PreviousCodable)
}

extension StitchVersionedCodable {
    init(anyCodable: any StitchVersionedCodable) {
        self.init(previousInstance: anyCodable as! Self.PreviousCodable)
    }
}

func getStitchEncoder() -> JSONEncoder {
    let encoder = JSONEncoder()
    encoder.dateEncodingStrategy = .iso8601
    return encoder
}

func getStitchDecoder() -> JSONDecoder {
    let decoder = JSONDecoder()
    decoder.dateDecodingStrategy = .iso8601
    return decoder
}
