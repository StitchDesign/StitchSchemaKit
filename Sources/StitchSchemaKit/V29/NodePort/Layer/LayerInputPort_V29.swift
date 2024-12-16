//
//  LayerInputPort_V29.swift
//
//
//  Created by Elliot Boschwitz on 4/3/24.
//

import Foundation

public enum LayerInputPort_V29: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V29
    public typealias PreviousInstance = LayerInputPort_V28.LayerInputPort
    // MARK: - endif
    
    public enum LayerInputPort: CaseIterable {
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
        case strokeLineCap
        case strokeLineJoin
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
        
        // Shadows
        case shadowColor
        case shadowOpacity
        case shadowRadius
        case shadowOffset
        
        // SFSymbol
        case sfSymbol
        
        // Video
        case videoURL
        case volume
        
        // Grid
        case spacingBetweenGridColumns
        case spacingBetweenGridRows
        case itemAlignmentWithinGridCell
        // MARK: add HorizontalAlignment for LazyVGrid
        
        case sizingScenario
        
        // Aspect Ratio
        case widthAxis
        case heightAxis
        case contentMode
        
        // Min/max Size
        case minSize
        case maxSize
        
        // Spacing
        case spacing
        
        // Pinning
        case isPinned
        case pinTo
        case pinAnchor
        case pinOffset
        
        // Individual layer's padding, margin (whether in Group or not)
        case layerPadding
        case layerMargin

        // Layer's offset when in a Group
        case offsetInGroup
        
        case materialThickness
        case deviceAppearance
        
        // Layer scroll
        case scrollContentSize
        
        case scrollXEnabled
        case scrollJumpToXStyle
        case scrollJumpToX
        case scrollJumpToXLocation
        
        case scrollYEnabled
        case scrollJumpToYStyle
        case scrollJumpToY
        case scrollJumpToYLocation
    }
}

extension LayerInputPort_V29.LayerInputPort: StitchVersionedCodable {
    public init(previousInstance: LayerInputPort_V29.PreviousInstance) {
        switch previousInstance {
        case .position:
            self = .position
        case .size:
            self = .size
        case .scale:
            self = .scale
        case .anchoring:
            self = .anchoring
        case .opacity:
            self = .opacity
        case .zIndex:
            self = .zIndex
        case .masks:
            self = .masks
        case .color:
            self = .color
        case .rotationX:
            self = .rotationX
        case .rotationY:
            self = .rotationY
        case .rotationZ:
            self = .rotationZ
        case .lineColor:
            self = .lineColor
        case .lineWidth:
            self = .lineWidth
        case .blur:
            self = .blur
        case .blendMode:
            self = .blendMode
        case .brightness:
            self = .brightness
        case .colorInvert:
            self = .colorInvert
        case .contrast:
            self = .contrast
        case .hueRotation:
            self = .hueRotation
        case .saturation:
            self = .saturation
        case .pivot:
            self = .pivot
        case .enabled:
            self = .enabled
        case .blurRadius:
            self = .blurRadius
        case .backgroundColor:
            self = .backgroundColor
        case .isClipped:
            self = .isClipped
        case .orientation:
            self = .orientation
        case .padding:
            self = .padding
        case .setupMode:
            self = .setupMode
        case .isAnimating:
            self = .isAnimating
        case .allAnchors:
            self = .allAnchors
        case .cameraDirection:
            self = .cameraDirection
        case .isCameraEnabled:
            self = .isCameraEnabled
        case .isShadowsEnabled:
            self = .isShadowsEnabled
        case .shape:
            self = .shape
        case .strokePosition:
            self = .strokePosition
        case .strokeWidth:
            self = .strokeWidth
        case .strokeColor:
            self = .strokeColor
        case .strokeStart:
            self = .strokeStart
        case .strokeEnd:
            self = .strokeEnd
        case .strokeLineCap:
            self = .strokeLineCap
        case .strokeLineJoin:
            self = .strokeLineJoin
        case .coordinateSystem:
            self = .coordinateSystem
        case .cornerRadius:
            self = .cornerRadius
        case .canvasLineColor:
            self = .canvasLineColor
        case .canvasLineWidth:
            self = .canvasLineWidth
        case .text:
            self = .text
        case .placeholderText:
            self = .placeholderText
        case .fontSize:
            self = .fontSize
        case .textAlignment:
            self = .textAlignment
        case .verticalAlignment:
            self = .verticalAlignment
        case .textDecoration:
            self = .textDecoration
        case .textFont:
            self = .textFont
        case .image:
            self = .image
        case .video:
            self = .video
        case .model3D:
            self = .model3D
        case .fitStyle:
            self = .fitStyle
        case .clipped:
            self = .clipped
        case .progressIndicatorStyle:
            self = .progressIndicatorStyle
        case .progress:
            self = .progress
        case .mapType:
            self = .mapType
        case .mapLatLong:
            self = .mapLatLong
        case .mapSpan:
            self = .mapSpan
        case .isSwitchToggled:
            self = .isSwitchToggled
        case .startColor:
            self = .startColor
        case .endColor:
            self = .endColor
        case .startAnchor:
            self = .startAnchor
        case .endAnchor:
            self = .endAnchor
        case .centerAnchor:
            self = .centerAnchor
        case .startAngle:
            self = .startAngle
        case .endAngle:
            self = .endAngle
        case .startRadius:
            self = .startRadius
        case .endRadius:
            self = .endRadius
        case .shadowColor:
            self = .shadowColor
        case .shadowOpacity:
            self = .shadowOpacity
        case .shadowRadius:
            self = .shadowRadius
        case .shadowOffset:
            self = .shadowOffset
        case .sfSymbol:
            self = .sfSymbol
        case .videoURL:
            self = .videoURL
        case .volume:
            self = .volume
        case .spacingBetweenGridColumns:
            self = .spacingBetweenGridColumns
        case .spacingBetweenGridRows:
            self = .spacingBetweenGridRows
        case .itemAlignmentWithinGridCell:
            self = .itemAlignmentWithinGridCell
        case .widthAxis:
            self = .widthAxis
        case .heightAxis:
            self = .heightAxis
        case .contentMode:
            self = .contentMode
        case .minSize:
            self = .minSize
        case .maxSize:
            self = .maxSize
        case .spacing:
            self = .spacing
        case .sizingScenario:
            self = .sizingScenario
        case .isPinned:
            self = .isPinned
        case .pinTo:
            self = .pinTo
        case .pinAnchor:
            self = .pinAnchor
        case .pinOffset:
            self = .pinOffset
        case .layerPadding:
            self = .layerPadding
        case .layerMargin:
            self = .layerMargin
        case .offsetInGroup:
            self = .offsetInGroup
        case .materialThickness:
            self = .materialThickness
        case .deviceAppearance:
            self = .deviceAppearance
        case .scrollContentSize:
            self = .scrollContentSize
        case .scrollXEnabled:
            self = .scrollXEnabled
        case .scrollJumpToXStyle:
            self = .scrollJumpToXStyle
        case .scrollJumpToX:
            self = .scrollJumpToX
        case .scrollJumpToXLocation:
            self = .scrollJumpToXLocation
        case .scrollYEnabled:
            self = .scrollYEnabled
        case .scrollJumpToYStyle:
            self = .scrollJumpToYStyle
        case .scrollJumpToY:
            self = .scrollJumpToY
        case .scrollJumpToYLocation:
            self = .scrollJumpToYLocation
        }
    }
}
