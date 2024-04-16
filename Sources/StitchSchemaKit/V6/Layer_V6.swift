//
//  Layer_V6.swift
//
//
//  Created by Nicholas Arner on 1/27/24.
//

import Foundation

public enum Layer_V6: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V6
    public typealias PreviousInstance = Layer_V5.Layer
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
             videoStream = "Video Stream"
    }

}

extension Layer_V6.Layer: StitchVersionedCodable {
    public init(previousInstance: Layer_V6.PreviousInstance) {
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
