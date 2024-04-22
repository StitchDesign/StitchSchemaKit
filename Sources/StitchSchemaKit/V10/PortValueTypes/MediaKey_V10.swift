//
//  MediaKey_V10.swift
//
//
//  Created by Nicholas Arner on 1/24/24.
//

import Foundation

public enum MediaKey_V10: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V10
    public typealias PreviousInstance = MediaKey_V8.MediaKey
    // MARK: - endif
 
    public struct MediaKey: Codable, Hashable {
        public let filename: String // eg. `dogs`
        public let fileExtension: String // eg `.avi`
        
        public init(filename: String, fileExtension: String) {
            self.filename = filename
            self.fileExtension = fileExtension
        }
        
        public init(_ url: URL) {
            self.filename = url.filename
            self.fileExtension = url.pathExtension
        }
    }

}

extension MediaKey_V10.MediaKey: StitchVersionedCodable {
    public init(previousInstance: MediaKey_V10.PreviousInstance) {
        self.init(filename: previousInstance.filename, fileExtension: previousInstance.fileExtension)
    }
}
