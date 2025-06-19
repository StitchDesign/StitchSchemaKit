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
             cone,
             button
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

extension Layer_V32.Layer {
    public static let titleDisplay = "Layer"
    
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
        case .button:
            return "Button"
        }
    }
    
    public var aiNodeDescription: String {
        switch self {
        case .text:
            return "displays a text string."
        case .oval:
            return "displays an oval."
        case .rectangle:
            return "displays a rectangle."
        case .shape:
            return "takes a Shape and displays it."
        case .colorFill:
            return "displays a color fill."
        case .image:
            return "displays an image."
        case .video:
            return "displays a video."
        case .videoStreaming:
            return "displays a streaming video."
        case .realityView:
            return "displays AR scene output."
        case .canvasSketch:
            return "draw custom shapes interactively."
        case .model3D:
            return "Layer - display a 3D model asset (of a USDZ file type) in the preview window."
        case .box:
            return "A box 3D shape, which can be used inside a Reality View."
        case .sphere:
            return "A sphere 3D shape, which can be used inside a Reality View."
        case .cylinder:
            return "A cylinder 3D shape, which can be used inside a Reality View."
        case .cone:
            return "A cylinder 3D shape, which can be used inside a Reality View."
        case .group:
            return "A container layer that can hold multiple child layers."
        case .hitArea:
            return "A layer that defines an interactive area for touch input."
        case .textField:
            return "An editable text input field."
        case .progressIndicator:
            return "Displays a progress indicator or loading state."
        case .switchLayer:
            return "A toggle switch control layer."
        case .linearGradient:
            return "Creates a linear gradient."
        case .radialGradient:
            return "-Creates a radial gradient."
        case .angularGradient:
            return "Creates an angular gradient."
        case .material:
            return "A Material Effect layer."
        case .map:
            return "The Map node will display an Apple Maps UI in the preview window."
        case .sfSymbol:
            return "Creates an SF Symbol."
        case .button:
            return "A button control layer."
        }
    }
}
