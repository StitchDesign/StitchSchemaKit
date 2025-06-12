//
//  PatchOrLayer_V32.swift
//  StitchSchemaKit
//
//  Created by Elliot Boschwitz on 6/1/25.
//

import Foundation

public enum PatchOrLayer_V32: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V32
    public typealias PreviousInstance = PatchOrLayer_V31.PatchOrLayer
    public typealias Patch = Patch_V32.Patch
    public typealias Layer = Layer_V32.Layer
    // MARK: - endif
    
    public enum PatchOrLayer: Codable, Hashable {
        case patch(Patch), layer(Layer)
    }
}

extension PatchOrLayer_V32.PatchOrLayer: StitchVersionedCodable {
    public init(previousInstance: PatchOrLayer_V32.PreviousInstance) {
        switch previousInstance {
        case .patch(let patch):
            self = .patch(.init(previousInstance: patch))
        case .layer(let layer):
            self = .layer(.init(previousInstance: layer))
        }
    }
}
//
//extension PatchOrLayer_V32.PatchOrLayer {
//    var description: String {
//        switch self {
//        case .patch(let patch):
//            return patch.defaultDisplayTitle()
//        case .layer(let layer):
//            return layer.defaultDisplayTitle()
//        }
//    }
//    
//    public var asLLMStepNodeName: String {
//        switch self {
//        case .patch(let x):
//            // e.g. Patch.squareRoot -> "Square Root" -> "squareRoot || Patch"
//            return x.aiDisplayTitle
//        case .layer(let x):
//            return x.aiDisplayTitle
//        }
//    }
//}
