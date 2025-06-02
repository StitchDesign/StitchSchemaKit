//
//  Layer_V31.swift
//
//
//  Created by Nicholas Arner on 1/27/24.
//

import Foundation

public enum Layer_V31: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V31
    public typealias PreviousInstance = Layer_V30.Layer
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

extension Layer_V31.Layer: StitchVersionedCodable {
    public init(previousInstance: Layer_V31.PreviousInstance) {
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

extension Layer_V31.Layer {
    public func defaultDisplayTitle() -> String {
        switch self {
        case .model3D:
            return "3D Model"
        case .text:
            return "Text"
        case .oval:
            return "Oval"
        case .rectangle:
            return "Rectangle"
        case .image:
            return "Image"
        case .group:
            return "Group"
        case .video:
            return "Video"
        case .realityView:
            return "Reality View"
        case .shape:
            return "Shape"
        case .colorFill:
            return "Color Fill"
        case .hitArea:
            return "Hit Area"
        case .canvasSketch:
            return "Canvas Sketch"
        case .textField:
            return "Text Field"
        case .map:
            return "Map"
        case .progressIndicator:
            return "Progress Indicator"
        case .sfSymbol:
            return "SF Symbol"
        case .material:
            return "Material"
        case .switchLayer:
            return "Toggle Switch"
        case .linearGradient:
            return "Linear Gradient"
        case .radialGradient:
            return "Radial Gradient"
        case .angularGradient:
            return "Angular Gradient"
        case .videoStreaming:
            return "Video Streaming"
        case .box:
            return "Box"
        case .sphere:
            return "Sphere"
        case .cylinder:
            return "Cylinder"
        case .cone:
            return "Cone"
        }
    }
}
