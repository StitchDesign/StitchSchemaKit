//
//  LayerInputPort_V32.swift
//
//
//  Created by Elliot Boschwitz on 4/3/24.
//

import Foundation

public enum LayerInputPort_V32: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V32
    public typealias PreviousInstance = LayerInputPort_V31.LayerInputPort
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
        case cameraDirection
        case isCameraEnabled
        case isShadowsEnabled
                
        // 3D
        case transform3D
        case anchorEntity
        case isEntityAnimating
        case translation3DEnabled
        case rotation3DEnabled
        case scale3DEnabled
        case size3D
        case radius3D
        case height3D
        
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
        case isMetallic
        
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
        case beginEditing
        case endEditing
        case setText
        case textToSet
        case isSecureEntry
        case isSpellCheckEnabled
        case keyboardType
        
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
        
        // How a layer group aligns its children
        // e.g. `VStack(alignment: .leading) { ... }`
        case layerGroupAlignment
        
        case materialThickness
        case deviceAppearance
        
        // Layer scroll
        case scrollContentSize
        case isScrollAuto
        
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

extension LayerInputPort_V32.LayerInputPort: StitchVersionedCodable {
    public init(previousInstance: LayerInputPort_V32.PreviousInstance) {
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
        case .transform3D:
            self = .transform3D
        case .anchorEntity:
            self = .anchorEntity
        case .isEntityAnimating:
            self = .isEntityAnimating
        case .translation3DEnabled:
            self = .translation3DEnabled
        case .rotation3DEnabled:
            self = .rotation3DEnabled
        case .scale3DEnabled:
            self = .scale3DEnabled
        case .size3D:
            self = .size3D
        case .radius3D:
            self = .radius3D
        case .height3D:
            self = .height3D
        case .isMetallic:
            self = .isMetallic
        case .layerGroupAlignment:
            self = .layerGroupAlignment
        case .isScrollAuto:
            self = .isScrollAuto
        }
    }
}

extension LayerInputPort_V32.LayerInputPort {
    /// Keypath mapping to this schema version.
    var schemaPortKeyPath: WritableKeyPath<LayerNodeEntity_V32.LayerNodeEntity, LayerInputEntity_V32.LayerInputEntity> {
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
        case .strokeLineCap:
            return \.strokeLineCapPort
        case .strokeLineJoin:
            return \.strokeLineJoinPort
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
        case .beginEditing:
            return \.beginEditingPort
        case .endEditing:
            return \.endEditingPort
        case .setText:
            return \.setTextPort
        case .textToSet:
            return \.textToSetPort
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
        
        case .shadowColor:
            return \.shadowColorPort
        case .shadowOpacity:
            return \.shadowOpacityPort
        case .shadowRadius:
            return \.shadowRadiusPort
        case .shadowOffset:
            return \.shadowOffsetPort
        case .sfSymbol:
            return \.sfSymbolPort
            
        case .videoURL:
            return \.videoURLPort
        case .volume:
            return \.volumePort
            
        case .spacingBetweenGridColumns:
            return \.spacingBetweenGridColumnsPort
        case .spacingBetweenGridRows:
            return \.spacingBetweenGridRowsPort
        case .itemAlignmentWithinGridCell:
            return \.itemAlignmentWithinGridCellPort
        
        case .widthAxis:
            return \.widthAxisPort
        case .heightAxis:
            return \.heightAxisPort
        case .contentMode:
            return \.contentModePort
  
        case .minSize:
            return \.minSizePort
        case .maxSize:
            return \.maxSizePort
        
        case .spacing:
            return \.spacingPort
            
        case .sizingScenario:
            return \.sizingScenarioPort
            
        case .isPinned:
            return \.isPinnedPort
        case .pinTo:
            return \.pinToPort
        case .pinAnchor:
            return \.pinAnchorPort
        case .pinOffset:
            return \.pinOffsetPort
        case .layerPadding:
            return \.layerPaddingPort
        case .layerMargin:
            return \.layerMarginPort
        case .offsetInGroup:
            return \.offsetInGroupPort
        case .layerGroupAlignment:
            return \.layerGroupAlignmentPort
        case .materialThickness:
            return \.materialThicknessPort
        case .deviceAppearance:
            return \.deviceAppearancePort
        case .scrollContentSize:
            return \.scrollContentSizePort
        case .scrollXEnabled:
            return \.scrollXEnabledPort
        case .scrollJumpToXStyle:
            return \.scrollJumpToXStylePort
        case .scrollJumpToX:
            return \.scrollJumpToXPort
        case .scrollJumpToXLocation:
            return \.scrollJumpToXLocationPort
        case .scrollYEnabled:
            return \.scrollYEnabledPort
        case .scrollJumpToYStyle:
            return \.scrollJumpToYStylePort
        case .scrollJumpToY:
            return \.scrollJumpToYPort
        case .scrollJumpToYLocation:
            return \.scrollJumpToYLocationPort
        case .transform3D:
            return \.transform3DPort
        case .anchorEntity:
            return \.anchorEntityPort
        case .isEntityAnimating:
            return \.isEntityAnimatingPort
        case .translation3DEnabled:
            return \.translation3DEnabledPort
        case .rotation3DEnabled:
            return \.rotation3DEnabledPort
        case .scale3DEnabled:
            return \.scale3DEnabledPort
        case .size3D:
            return \.size3DPort
        case .radius3D:
            return \.radius3DPort
        case .height3D:
            return \.height3DPort
        case .isMetallic:
            return \.isMetallicPort
        case .isScrollAuto:
            return \.isScrollAutoPort
        case .isSecureEntry:
            return \.isSecureEntryPort
        case .isSpellCheckEnabled:
            return \.isSpellCheckEnabledPort
        case .keyboardType:
            return \.keyboardTypePort
        }
    }
    
    public func label(useShortLabel: Bool = false) -> String {
        switch self {
        case .position:
            return "Position"
        case .size:
            return "Size"
        case .scale:
            return "Scale"
        case .anchoring:
            return "Anchoring"
        case .startAnchor:
            return "Start Anchor"
        case .endAnchor:
            return "End Anchor"
        case .opacity:
            return "Opacity"
        case .zIndex:
            return "Z Index"
        case .masks:
            return "Masks"
        case .color:
            return "Color"
        case .startColor:
            return "Start Color"
        case .endColor:
            return "End Color"
        case .rotationX:
            return "Rotation X"
        case .rotationY:
            return "Rotation Y"
        case .rotationZ:
            return "Rotation Z"
        case .lineColor:
            return "Line Color"
        case .lineWidth:
            return "Line Width"
        case .blur:
            return "Blur"
        case .blendMode:
            return "Blend Mode"
        case .brightness:
            return "Brightness"
        case .colorInvert:
            return "Color Invert"
        case .contrast:
            return "Contrast"
        case .hueRotation:
            return "Hue Rotation"
        case .saturation:
            return "Saturation"
        case .pivot:
            return "Pivot"
        case .enabled:
            return "Enable"
        case .blurRadius:
            return "Blur Radius"
        case .backgroundColor:
            return "Background Color"
        case .isClipped:
            return "Clipped"
        case .orientation: // LayerGroup orientation
            return "Layout"
        case .padding:
            return "Padding"
        case .setupMode:
            return "Setup Mode"
        case .cameraDirection:
            return "Camera Direction"
        case .isCameraEnabled:
            return "Camera Enabled"
        case .isShadowsEnabled:
            return "Shadows Enabled"
            
        case .shape:
            return "Shape"
            
        case .strokePosition:
            return useShortLabel ? "Position" : "Stroke Position"
        case .strokeWidth:
            return useShortLabel ? "Width" : "Stroke Width"
        case .strokeColor:
            return useShortLabel ? "Color" : "Stroke Color"
        case .strokeStart:
            return useShortLabel ? "Start" : "Stroke Start"
        case .strokeEnd:
            return useShortLabel ? "End" : "Stroke End"
        case .strokeLineCap:
            return useShortLabel ? "Line Cap" : "Stroke Line Cap"
        case .strokeLineJoin:
            return useShortLabel ? "Line Join" : "Stroke Line Join"
        case .coordinateSystem:
            return "Coordinate System"
            
        case .canvasLineColor:
            return "Line Color"
        case .canvasLineWidth:
            return "Line Width"
        case .cornerRadius:
            return "Corner Radius"
        case .text:
            return "Text"
        case .fontSize:
            return "Font Size"
        case .textAlignment:
            return useShortLabel ? "Alignment" : "Text Alignment"
        case .verticalAlignment:
            return useShortLabel ? "Vertical Align." : "Vertical Text Alignment"
        case .textDecoration:
            return useShortLabel ? "Decoration" : "Text Decoration"
        case .textFont:
            return useShortLabel ? "Font" : "Text Font"
        case .image:
            return "Image"
        case .video:
            return "Video"
        case .fitStyle:
            return "Fit Style"
        case .clipped:
            return "Clipped"
        case .isAnimating:
            return "Animating"
        case .progressIndicatorStyle:
            return "Style"
        case .progress:
            return "Progress"
        case .model3D:
            return "3D Model"
        case .mapType:
            return "Map Style"
        case .mapLatLong:
            return "Lat/Long"
        case .mapSpan:
            return "Span"
        case .isSwitchToggled:
            return "Toggle"
        case .placeholderText:
            return "Placeholder"
        case .centerAnchor:
            return "Center Anchor"
        case .startAngle:
            return "Start Angle"
        case .endAngle:
            return "End Angle"
        case .startRadius:
            return "Start Radius"
        case .endRadius:
            return "End Radius"
        case .shadowColor:
            return useShortLabel ? "Color" : "Shadow Color"
        case .shadowOpacity:
            return useShortLabel ? "Opacity" : "Shadow Opacity"
        case .shadowRadius:
            return useShortLabel ? "Radius" : "Shadow Radius"
        case .shadowOffset:
            return useShortLabel ? "Offset" : "Shadow Offset"
        case .sfSymbol:
            return "SF Symbol"
            
        case .videoURL:
            return "Video URL"
        case .volume:
            return "Volume"
            
        case .spacingBetweenGridColumns:
            return "Column Spacing"
        case .spacingBetweenGridRows:
            return "Row Spacing"
        case .itemAlignmentWithinGridCell:
            return "Cell Anchoring"
            
        case .widthAxis:
            return "Width Axis"
        case .heightAxis:
            return "Height Axis"
        case .contentMode:
            return "Content Mode"
        case .minSize:
            return "Min Size"
        case .maxSize:
            return "Max Size"
        case .spacing:
            return "Spacing"
        case .sizingScenario:
            return "Sizing"
        case .isPinned:
            return "Pinned"
        case .pinTo:
            return "Pin To"
        case .pinAnchor:
            return useShortLabel ? "Anchor" : "Pin Anchor"
        case .pinOffset:
            return useShortLabel ? "Offset" : "Pin Offset"
        
        case .layerPadding:
            return useShortLabel ? "Padding" : "Layer Padding"
        case .layerMargin:
            return useShortLabel ? "Margin" : "Layer Margin"
        case .offsetInGroup:
            return useShortLabel ? "Offset" : "Offset in Group"
        case .layerGroupAlignment:
            return useShortLabel ? "Alignment" : "Children Alignment"
        case .materialThickness:
            return "Material"
        case .deviceAppearance:
            return useShortLabel ? "Appearance" : "Device Appearance"
        case .scrollContentSize:
            return useShortLabel ? "Content" : "Content Size"
        case .scrollXEnabled:
            return "Scroll X Enabled"
        case .scrollJumpToXStyle:
            return "Jump Style X"
        case .scrollJumpToX:
            return "Jump to X"
        case .scrollJumpToXLocation:
            return "Jump Position X"
        case .scrollYEnabled:
            return "Scroll Y Enabled"
        case .scrollJumpToYStyle:
            return "Jump Style Y"
        case .scrollJumpToY:
            return "Jump to Y"
        case .scrollJumpToYLocation:
            return "Jump Position Y"
        case .anchorEntity:
            return "Anchor Entity"
        case .isEntityAnimating:
            return "Animating"
        case .translation3DEnabled:
            return "Translation"
        case .rotation3DEnabled:
            return "Rotation"
        case .scale3DEnabled:
            return "Scale"
        case .isMetallic:
            return "Metallic"
        case .transform3D:
            return "3D Transform"
        case .size3D:
            return "Size 3D"
        case .radius3D:
            return "Radius"
        case .height3D:
            return "Height"
        case .isScrollAuto:
            return "Auto Scroll"
        case .beginEditing:
            return "Begin Editing"
        case .endEditing:
            return "End Editing"
        case .setText:
            return "Set Text"
        case .textToSet:
            return "Text To Set"
        case .isSecureEntry:
            return "Secure Entry"
        case .isSpellCheckEnabled:
            return "Spellcheck Enabled"
        case .keyboardType:
            return "Keyboard Type"
        }
    }
}
