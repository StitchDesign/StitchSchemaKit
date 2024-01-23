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
    public init(currentDoc: StitchDocument) throws {
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
    public init(anyCodable: any StitchVersionedCodable) {
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

extension VersionType {
    static func getOldestVersion() -> Self {
        guard let oldestVersion = Self.allCases.sorted(by: <).first else {
            fatalError("VersionType getOldestVersion error: no versions found.")
        }
        return oldestVersion
    }

    static func getNewestVersion() -> Self {
        guard let newestVersion = Self.allCases.sorted(by: >).first else {
            fatalError("VersionType getNewestVersion error: no versions found.")
        }
        return newestVersion
    }

    static func getNextVersion(_ version: Self) -> Self? {
        let allVersions = Self.allCases.sorted(by: <)

        guard let index = allVersions.firstIndex(of: version),
              let next = allVersions[safe: index + 1] else {
            print("VersionType.getNextVersion error: could not find index")
            return nil
        }

        return next
    }
}

// https://developer.apple.com/forums/thread/112243
// https://www.hackingwithswift.com/example-code/language/how-to-conform-to-the-hashable-protocol
// https://codereview.stackexchange.com/questions/148763/extending-cgpoint-to-conform-to-hashable

extension CGPoint: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(x)
        hasher.combine(y)
    }
}

extension CGSize: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(width)
        hasher.combine(height)
    }
}
