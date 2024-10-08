//
//  Layer_V9.swift
//
//
//  Created by Nicholas Arner on 1/27/24.
//

import Foundation

public enum Layer_V9: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V9
    public typealias PreviousInstance = Layer_V8.Layer
    // MARK: - endif
 

    public enum Layer: String, CaseIterable {
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
             canvasSketch = "Canvas Sketch",
             textField = "Text Field",
             map = "Map",
             progressIndicator = "Progress Indicator",
             switchLayer = "Switch",
             linearGradient = "Linear Gradient"
    }
}

extension Layer_V9.Layer: StitchVersionedCodable {
    public init(previousInstance: Layer_V9.PreviousInstance) {
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
        }
        
    }
}
