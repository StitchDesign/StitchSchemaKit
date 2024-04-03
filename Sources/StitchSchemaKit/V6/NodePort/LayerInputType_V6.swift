//
//  File.swift
//  
//
//  Created by Elliot Boschwitz on 4/3/24.
//

import Foundation

public enum LayerInputType_V6: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V6
    public typealias PreviousInstance = Self.LayerInputType
    // MARK: - endif
    
    public enum LayerInputType: String {
        // Required everywhere
        case position = "Position"
        case size = "Size"
        case scale = "Scale"
        case anchoring = "Anchoring"
        case opacity = "Opacity"
        case zIndex = "Z Index"
        
        // Others
        case color = "Color"
        case rotationX = "Rotation X"
        case rotationY = "Rotation Y"
        case rotationZ = "Rotation Z"
        case lineColor = "Line Color"
        case lineWidth = "Line Width"
        case blur = "Blur"
        case blendMode = "Blend Mode"
        case brightness = "Brightness"
        case colorInvert = "Color Invert"
        case contrast = "Contrast"
        case hueRotation = "Hue Rotation"
        case saturation = "Saturation"
        case pivot = "Pivot"
        case enabled = "Enable"
        case blurRadius = "Blur Radius"
        case backgroundColor = "Background Color"
        case isClipped = "Clipped"
        case orientation = "Orientation"
        case padding = "Padding"
        case setupMode = "Setup Mode"
        
        // Reality
        case allAnchors = ""
        case cameraDirection = "Camera Direction"
        case isCameraEnabled = "Camera Enabled"
        case isShadowsEnabled = "Shadows Enabled"
    }
}

extension LayerInputType_V6.LayerInputType: StitchVersionedCodable {
    public init(previousInstance: LayerInputType_V6.PreviousInstance) {
        fatalError()
    }
}
