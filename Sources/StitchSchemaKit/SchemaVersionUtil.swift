//
//  SchemaVersionUtil.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 11/8/23.
//

import Foundation
import SwiftUI
import SwiftyJSON

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

    public var codableType: any StitchVersionedCodable.Type {
        Self.getCodableType(from: self.version)
    }
}

extension URL {
    /// Parse the version number from some string file extension (i.e. "v2.json")
    func getSchemaVersion() -> StitchSchemaVersion? {
        let splitFileExt = self.filename.split { $0 == "." }
        
        // File ext should be ["data", "v(n)"] where n is the version number
        guard let versionSplitString = splitFileExt[safe: 1],
              let versionString = versionSplitString.split(separator: "v").first else {
            return nil
        }
        
        guard let versionNum = Int(versionString) else {
            return nil
        }
        
        let matchedVersion = StitchSchemaVersion(rawValue: versionNum)
        return matchedVersion
    }
}

extension StitchDocumentVersion {
    public static func migrate(versionedCodableUrl: URL) throws -> Self.NewestVersionType? {
        // 1. get version
        // 2. call decode with payload
        // 3. get next type
        // 4. call next type's init with decoded data
        // 5. encode, rinse and repeat
        // 6. return when casting successful on newest type
        
        // Parse version from data file extension
        guard var currentVersion = versionedCodableUrl.getSchemaVersion() else {
            print("StitchDocumentVersion.migrate error: could not parse version number from extension in: \(versionedCodableUrl)")
            return nil
        }

        let newestVersion = StitchSchemaVersion.getNewestVersion()
        let versionedData = try Data(contentsOf: versionedCodableUrl)
        let documentVersion = StitchDocumentVersion(version: currentVersion)
        var currentEntity: any StitchVersionedCodable = try documentVersion.decode(versionedData)

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

    public static func upgradeEntities(_ previousEntities: [Self.PreviousCodable]) -> [Self] {
        previousEntities.map { Self.init(previousInstance: $0) }
    }
}
public protocol StitchVersionedCodable: Codable, Sendable {
    associatedtype PreviousCodable: StitchVersionedCodable
    init(previousInstance: PreviousCodable)
}

extension StitchVersionedCodable {
    public init(anyCodable: any StitchVersionedCodable) {
        self.init(previousInstance: anyCodable as! Self.PreviousCodable)
    }
}

public func getStitchEncoder() -> JSONEncoder {
    let encoder = JSONEncoder()
    encoder.dateEncodingStrategy = .iso8601
    return encoder
}

public func getStitchDecoder() -> JSONDecoder {
    let decoder = JSONDecoder()
    decoder.dateDecodingStrategy = .iso8601
    return decoder
}

extension VersionType {
    public static func getOldestVersion() -> Self {
        guard let oldestVersion = Self.allCases.sorted(by: <).first else {
            fatalError("VersionType getOldestVersion error: no versions found.")
        }
        return oldestVersion
    }

    public static func getNewestVersion() -> Self {
        guard let newestVersion = Self.allCases.sorted(by: >).first else {
            fatalError("VersionType getNewestVersion error: no versions found.")
        }
        return newestVersion
    }

    public static func getNextVersion(_ version: Self) -> Self? {
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

// TODO: remove this when JSON is moved to media manager
extension JSON: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.stringValue)
    }
}
