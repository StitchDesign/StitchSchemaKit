//
//  File.swift
//  
//
//  Created by Elliot Boschwitz on 4/3/24.
//

import Foundation

public enum LayerInputType_V11: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V11
    public typealias PreviousInstance = LayerInputType_V10.LayerInputType
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
        case masks
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
        case isAnimating
        
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
        case strokeStart
        case strokeEnd
        case coordinateSystem
        case cornerRadius
        
        // Canvas
        case canvasLineColor
        case canvasLineWidth
        
        // Text/Text Field
        case text
        case placeholderText
        case fontSize
        case textAlignment
        case verticalAlignment
        case textDecoration
        case textFont
        
        // Media
        case image
        case video
        case model3D
        case fitStyle
        case clipped
        
        // Progress Indicator
        case progressIndicatorStyle
        case progress
        
        // Map
        case mapType
        case mapLatLong
        case mapSpan
        
        // Switch
        case isSwitchToggled
        
        // Gradients
        case startColor
        case endColor
        case startAnchor
        case endAnchor
        case centerAnchor
        case startAngle
        case endAngle
        case startRadius
        case endRadius
    }
}

extension LayerInputType_V11.LayerInputType: StitchVersionedCodable {
    public init(previousInstance: LayerInputType_V11.PreviousInstance) {
        fatalError()
    }
}

extension LayerInputType_V11.LayerInputType {
    /// Keypath mapping to this schema version.
    public var schemaPortKeyPath: WritableKeyPath<LayerNodeEntity_V11.LayerNodeEntity, NodeConnectionType_V11.NodeConnectionType> {
        switch self {
            
        // Required
        case .position:
            return \.positionPort
        case .size:
            return \.sizePort
        case .scale:
            return \.scalePort
        case .anchoring:
            return \.anchoringPort
        case .opacity:
            return \.opacityPort
        case .zIndex:
            return \.zIndexPort
        
        // Common
        case .masks:
            return \.masksPort
        case .color:
            return \.colorPort
        case .rotationX:
            return \.rotationXPort
        case .rotationY:
            return \.rotationYPort
        case .rotationZ:
            return \.rotationZPort
        case .lineColor:
            return \.lineColorPort
        case .lineWidth:
            return \.lineWidthPort
        case .blur:
            return \.blurPort
        case .blendMode:
            return \.blendModePort
        case .brightness:
            return \.brightnessPort
        case .colorInvert:
            return \.colorInvertPort
        case .contrast:
            return \.contrastPort
        case .hueRotation:
            return \.hueRotationPort
        case .saturation:
            return \.saturationPort
        case .pivot:
            return \.pivotPort
        case .enabled:
            return \.enabledPort
        case .blurRadius:
            return \.blurRadiusPort
        case .backgroundColor:
            return \.backgroundColorPort
        case .isClipped:
            return \.isClippedPort
        case .orientation:
            return \.orientationPort
        case .padding:
            return \.paddingPort
        case .setupMode:
            return \.setupModePort
        case .allAnchors:
            return \.allAnchorsPort
        case .cameraDirection:
            return \.cameraDirectionPort
        case .isCameraEnabled:
            return \.isCameraEnabledPort
        case .isShadowsEnabled:
            return \.isShadowsEnabledPort
        case .shape:
            return \.shapePort
        case .strokePosition:
            return \.strokePositionPort
        case .strokeWidth:
            return \.strokeWidthPort
        case .strokeColor:
            return \.strokeColorPort
        case .strokeStart:
            return \.strokeStartPort
        case .strokeEnd:
            return \.strokeEndPort
        case .coordinateSystem:
            return \.coordinateSystemPort
        case .cornerRadius:
            return \.cornerRadiusPort
        case .canvasLineColor:
            return \.canvasLineColorPort
        case .canvasLineWidth:
            return \.canvasLineWidthPort
        case .text:
            return \.textPort
        case .fontSize:
            return \.fontSizePort
        case .textAlignment:
            return \.textAlignmentPort
        case .verticalAlignment:
            return \.verticalAlignmentPort
        case .textDecoration:
            return \.textDecorationPort
        case .textFont:
            return \.textFontPort
        case .image:
            return \.imagePort
        case .video:
            return \.videoPort
        case .fitStyle:
            return \.fitStylePort
        case .clipped:
            return \.clippedPort
        case .isAnimating:
            return \.isAnimatingPort
        case .progressIndicatorStyle:
            return \.progressIndicatorStylePort
        case .progress:
            return \.progressPort
        case .model3D:
            return \.model3DPort
        case .mapType:
            return \.mapTypePort
        case .mapLatLong:
            return \.mapLatLongPort
        case .mapSpan:
            return \.mapSpanPort
        case .isSwitchToggled:
            return \.isSwitchToggledPort
        case .placeholderText:
            return \.placeholderTextPort
        case .startColor:
            return \.startColorPort
        case .endColor:
            return \.endColorPort
        case .startAnchor:
            return \.startAnchorPort
        case .endAnchor:
            return \.endAnchorPort
        case .centerAnchor:
            return \.centerAnchorPort
        case .startAngle:
            return \.startAnglePort
        case .endAngle:
            return \.endAnglePort
        case .startRadius:
            return \.startRadiusPort
        case .endRadius:
            return \.endRadiusPort
        }
    }
}
