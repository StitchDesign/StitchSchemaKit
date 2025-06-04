//
//  Layer_V32.swift
//
//
//  Created by Nicholas Arner on 1/27/24.
//

import Foundation

public enum Layer_V32: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V32
    public typealias PreviousInstance = Layer_V31.Layer
    // MARK: - endif
 

    public enum Layer: CaseIterable, Hashable {
        case text,
             oval,
             rectangle,
             image,
             group,
             video,
             model3D,
             realityView,
             shape,
             colorFill,
             hitArea,
             canvasSketch,
             textField,
             map,
             progressIndicator,
             switchLayer,
             linearGradient,
             radialGradient,
             angularGradient,
             sfSymbol,
             videoStreaming,
             material,
             box,
             sphere,
             cylinder,
             cone
    }
}

extension Layer_V32.Layer: StitchVersionedCodable {
    public init(previousInstance: Layer_V32.PreviousInstance) {
        switch previousInstance {
            
        case .text:
            self = .text
        case .oval:
            self = .oval
        case .rectangle:
            self = .rectangle
        case .image:
            self = .image
        case .group:
            self = .group
        case .video:
            self = .video
        case .model3D:
            self = .model3D
        case .realityView:
            self = .realityView
        case .shape:
            self = .shape
        case .colorFill:
            self = .colorFill
        case .hitArea:
            self = .hitArea
        case .canvasSketch:
            self = .canvasSketch
        case .textField:
            self = .textField
        case .map:
            self = .map
        case .progressIndicator:
            self = .progressIndicator
        case .switchLayer:
            self = .switchLayer
        case .linearGradient:
            self = .linearGradient
        case .radialGradient:
            self = .radialGradient
        case .angularGradient:
            self = .angularGradient
        case .sfSymbol:
            self = .sfSymbol
        case .videoStreaming:
            self = .videoStreaming
        case .material:
            self = .material
        case .box:
            self = .box
        case .sphere:
            self = .sphere
        case .cylinder:
            self = .cylinder
        case .cone:
            self = .cone
        }
        
    }
}
