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
    
    public enum LayerInputType {
        // Required everywhere
        case position
        case size
        case scale
        case anchoring
        case opacity
        case zIndex
        
        // Common
        case color
        case rotationX
        case rotationY
        case rotationZ
        case lineColor
        case lineWidth
        case blur
        case blendMode
        case brightness
        case colorInvert
        case contrast
        case hueRotation
        case saturation
        case pivot
        case enabled
        case blurRadius
        case backgroundColor
        case isClipped
        case orientation
        case padding
        case setupMode
        
        // Reality
        case allAnchors
        case cameraDirection
        case isCameraEnabled
        case isShadowsEnabled
        
        // Shape
        case shape
        case strokePosition
        case strokeWidth
        case strokeColor
        case coordinateSystem
        case cornerRadius
        
        // Canvas
        case canvasLineColor
        case canvasLineWidth
        case canvasPosition
    }
}

extension LayerInputType_V6.LayerInputType: StitchVersionedCodable {
    public init(previousInstance: LayerInputType_V6.PreviousInstance) {
        fatalError()
    }
}
