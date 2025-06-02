//
//  PatchOrLayer_V31.swift
//  StitchSchemaKit
//
//  Created by Elliot Boschwitz on 6/1/25.
//

import Foundation

public enum PatchOrLayer_V31: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V31
    public typealias PreviousInstance = Self.PatchOrLayer
    public typealias Patch = Patch_V31.Patch
    public typealias Layer = Layer_V31.Layer
    // MARK: - endif
    
    public enum PatchOrLayer: Codable, Hashable {
        case patch(Patch), layer(Layer)
    }
}

extension PatchOrLayer_V31.PatchOrLayer: StitchVersionedCodable {
    public init(previousInstance: PatchOrLayer_V31.PreviousInstance) {
        fatalError()
    }
}

extension PatchOrLayer_V31.PatchOrLayer {
    var description: String {
        switch self {
        case .patch(let patch):
            return patch.defaultDisplayTitle()
        case .layer(let layer):
            return layer.defaultDisplayTitle()
        }
    }
    
    var asLLMStepNodeName: String {
        switch self {
        case .patch(let x):
            // e.g. Patch.squareRoot -> "Square Root" -> "squareRoot || Patch"
            return x.aiDisplayTitle
        case .layer(let x):
            return x.aiDisplayTitle
        }
    }
}
