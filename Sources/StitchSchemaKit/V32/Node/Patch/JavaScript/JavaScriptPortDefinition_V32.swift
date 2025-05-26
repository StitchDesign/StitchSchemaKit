//
//  JavaScriptPortDefinition_V32.swift
//  StitchSchemaKit
//
//  Created by Elliot Boschwitz on 5/26/25.
//

import Foundation
import SwiftUI

public enum JavaScriptPortDefinition_V32: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V32
    public typealias PreviousInstance = Self.JavaScriptPortDefinition
    // MARK: - end

    public struct JavaScriptPortDefinition: Hashable {
        public let label: String
        public let strictType: UserVisibleType_V32.UserVisibleType
        
        public init(label: String,
                    strictType: UserVisibleType_V32.UserVisibleType) {
            self.label = label
            self.strictType = strictType
        }
    }
}

extension JavaScriptPortDefinition_V32.JavaScriptPortDefinition: StitchVersionedCodable {
    public init(previousInstance: JavaScriptPortDefinition_V32.PreviousInstance) {
        // TODO: define on v33
        fatalError()
    }
}
