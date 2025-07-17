//
//  JavaScriptPortDefinition_V33.swift
//  StitchSchemaKit
//
//  Created by Elliot Boschwitz on 5/26/25.
//

import Foundation
import SwiftUI

public enum JavaScriptPortDefinition_V33: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V33
    public typealias PreviousInstance = JavaScriptPortDefinition_V32.JavaScriptPortDefinition
    // MARK: - end

    public struct JavaScriptPortDefinition: Hashable {
        public let label: String
        public let strictType: UserVisibleType_V33.UserVisibleType
        
        public init(label: String,
                    strictType: UserVisibleType_V33.UserVisibleType) {
            self.label = label
            self.strictType = strictType
        }
    }
}

extension JavaScriptPortDefinition_V33.JavaScriptPortDefinition: StitchVersionedCodable {
    public init(previousInstance: JavaScriptPortDefinition_V33.PreviousInstance) {
        self.label = previousInstance.label
        self.strictType = .init(previousInstance: previousInstance.strictType)
    }
}
