//
//  LayerNodeEntity_V31.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 12/29/23.
//

import SwiftUI

public enum LayerNodeEntity_V31: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V31
    public typealias PreviousInstance = LayerNodeEntity_V30.LayerNodeEntity
    public typealias CanvasNodeEntity = CanvasNodeEntity_V31.CanvasNodeEntity
    public typealias Layer = Layer_V31.Layer
    public typealias LayerInputEntity = LayerInputEntity_V31.LayerInputEntity
    public typealias NodeConnectionType = NodeConnectionType_V31.NodeConnectionType
    // MARK: - end

    public struct LayerNodeEntity: Hashable {
        public  let id: UUID
        public let layer: Layer
        
        // Optional node entities for layer node outputs
        public var outputCanvasPorts: [CanvasNodeEntity?]
        
        // Required
        public var positionPort: LayerInputEntity
        public var sizePort: LayerInputEntity
        public var scalePort: LayerInputEntity
        public var anchoringPort: LayerInputEntity
        public var opacityPort: LayerInputEntity
        public var zIndexPort: LayerInputEntity
        
        // Common
        public var masksPort: LayerInputEntity
        public var colorPort: LayerInputEntity
        public var startColorPort: LayerInputEntity
        public var endColorPort: LayerInputEntity
        public var startAnchorPort: LayerInputEntity
        public var endAnchorPort: LayerInputEntity
        
        public var centerAnchorPort: LayerInputEntity
        public var startAnglePort: LayerInputEntity
        public var endAnglePort: LayerInputEntity
        public var startRadiusPort: LayerInputEntity
        public var endRadiusPort: LayerInputEntity
        public var rotationXPort: LayerInputEntity
        public var rotationYPort: LayerInputEntity
        public var rotationZPort: LayerInputEntity
        public var lineColorPort: LayerInputEntity
        public var lineWidthPort: LayerInputEntity
        public var blurPort: LayerInputEntity
        public var blendModePort: LayerInputEntity
        public var brightnessPort: LayerInputEntity
        public var colorInvertPort: LayerInputEntity
        public var contrastPort: LayerInputEntity
        public var hueRotationPort: LayerInputEntity
        public var saturationPort: LayerInputEntity
        public var pivotPort: LayerInputEntity
        public var enabledPort: LayerInputEntity
        public var blurRadiusPort: LayerInputEntity
        public var backgroundColorPort: LayerInputEntity
        public var isClippedPort: LayerInputEntity
        public var orientationPort: LayerInputEntity
        
        public var paddingPort: LayerInputEntity
        
        public var setupModePort: LayerInputEntity
        public var cameraDirectionPort: LayerInputEntity
        public var isCameraEnabledPort: LayerInputEntity
        public var isShadowsEnabledPort: LayerInputEntity
        
        public var shapePort: LayerInputEntity
        public var strokePositionPort: LayerInputEntity
        public var strokeWidthPort: LayerInputEntity
        public var strokeColorPort: LayerInputEntity
        public var strokeStartPort: LayerInputEntity
        public var strokeEndPort: LayerInputEntity
        public var strokeLineCapPort: LayerInputEntity
        public var strokeLineJoinPort: LayerInputEntity
        public var coordinateSystemPort: LayerInputEntity
        
        public var cornerRadiusPort: LayerInputEntity
        public var canvasLineColorPort: LayerInputEntity
        public var canvasLineWidthPort: LayerInputEntity
        public var canvasPositionPort: LayerInputEntity
        public var textPort: LayerInputEntity
        public var fontSizePort: LayerInputEntity
        public var textAlignmentPort: LayerInputEntity
        public var verticalAlignmentPort: LayerInputEntity
        public var textDecorationPort: LayerInputEntity
        public var textFontPort: LayerInputEntity
        public var imagePort: LayerInputEntity
        public var videoPort: LayerInputEntity
        public var fitStylePort: LayerInputEntity
        public var clippedPort: LayerInputEntity
        public var isAnimatingPort: LayerInputEntity
        public var progressIndicatorStylePort: LayerInputEntity
        public var progressPort: LayerInputEntity
        public var model3DPort: LayerInputEntity
        public var mapTypePort: LayerInputEntity
        public var mapLatLongPort: LayerInputEntity
        public var mapSpanPort: LayerInputEntity
        public var isSwitchToggledPort: LayerInputEntity
        public var placeholderTextPort: LayerInputEntity
        
        public var shadowColorPort: LayerInputEntity
        public var shadowOpacityPort: LayerInputEntity
        public var shadowRadiusPort: LayerInputEntity
        public var shadowOffsetPort: LayerInputEntity
        
        public var transform3DPort: LayerInputEntity
        public var anchorEntityPort: LayerInputEntity
        public var isEntityAnimatingPort: LayerInputEntity
        public var translation3DEnabledPort: LayerInputEntity
        public var rotation3DEnabledPort: LayerInputEntity
        public var scale3DEnabledPort: LayerInputEntity
        public var size3DPort: LayerInputEntity
        public var radius3DPort: LayerInputEntity
        public var height3DPort: LayerInputEntity
        public var isMetallicPort: LayerInputEntity

        public var sfSymbolPort: LayerInputEntity
        
        public var videoURLPort: LayerInputEntity
        public var volumePort: LayerInputEntity

        public var spacingBetweenGridColumnsPort: LayerInputEntity
        public var spacingBetweenGridRowsPort: LayerInputEntity
        public var itemAlignmentWithinGridCellPort: LayerInputEntity
        
        public var sizingScenarioPort: LayerInputEntity
        
        // Aspect ratio
        public var widthAxisPort: LayerInputEntity
        public var heightAxisPort: LayerInputEntity
        public var contentModePort: LayerInputEntity
        
        // Min/max size
        public var minSizePort: LayerInputEntity
        public var maxSizePort: LayerInputEntity
        
        // Spacing
        public var spacingPort: LayerInputEntity
                
        // Pinning
        public var isPinnedPort: LayerInputEntity
        public var pinToPort: LayerInputEntity
        public var pinAnchorPort: LayerInputEntity
        public var pinOffsetPort: LayerInputEntity
        
        // Padding, margin; offset in group
        public var layerPaddingPort: LayerInputEntity
        public var layerMarginPort: LayerInputEntity
        public var offsetInGroupPort: LayerInputEntity
        public var layerGroupAlignmentPort: LayerInputEntity
        
        // Material Layer
        public var deviceAppearancePort: LayerInputEntity
        public var materialThicknessPort: LayerInputEntity
        
        // Layer scroll
        public var scrollContentSizePort: LayerInputEntity
        
        public var scrollXEnabledPort: LayerInputEntity
        public var scrollJumpToXStylePort: LayerInputEntity
        public var scrollJumpToXPort: LayerInputEntity
        public var scrollJumpToXLocationPort: LayerInputEntity
        
        public var scrollYEnabledPort: LayerInputEntity
        public var scrollJumpToYStylePort: LayerInputEntity
        public var scrollJumpToYPort: LayerInputEntity
        public var scrollJumpToYLocationPort: LayerInputEntity
                
        // Sidebar data
        public let hasSidebarVisibility: Bool
        public let layerGroupId: UUID?
        
        public init(id: UUID,
                    layer: Layer,
                    outputCanvasPorts: [CanvasNodeEntity?],
                    positionPort: LayerInputEntity = .createEmpty(),
                    sizePort: LayerInputEntity = .createEmpty(),
                    scalePort: LayerInputEntity = .createEmpty(),
                    anchoringPort: LayerInputEntity = .createEmpty(),
                    opacityPort: LayerInputEntity = .createEmpty(),
                    zIndexPort: LayerInputEntity = .createEmpty(),
                    masksPort: LayerInputEntity = .createEmpty(),
                    colorPort: LayerInputEntity = .createEmpty(),
                    
                    rotationXPort: LayerInputEntity = .createEmpty(),
                    rotationYPort: LayerInputEntity = .createEmpty(),
                    rotationZPort: LayerInputEntity = .createEmpty(),
                    
                    lineColorPort: LayerInputEntity = .createEmpty(),
                    lineWidthPort: LayerInputEntity = .createEmpty(),
                    blurPort: LayerInputEntity = .createEmpty(),
                    blendModePort: LayerInputEntity = .createEmpty(),
                    brightnessPort: LayerInputEntity = .createEmpty(),
                    colorInvertPort: LayerInputEntity = .createEmpty(),
                    contrastPort: LayerInputEntity = .createEmpty(),
                    hueRotationPort: LayerInputEntity = .createEmpty(),
                    saturationPort: LayerInputEntity = .createEmpty(),
                    pivotPort: LayerInputEntity = .createEmpty(),
                    enabledPort: LayerInputEntity = .createEmpty(),
                    blurRadiusPort: LayerInputEntity = .createEmpty(),
                    backgroundColorPort: LayerInputEntity = .createEmpty(),
                    isClippedPort: LayerInputEntity = .createEmpty(),
                    orientationPort: LayerInputEntity = .createEmpty(),
                    
                    paddingPort: LayerInputEntity = .createEmpty(),
                    
                    setupModePort: LayerInputEntity = .createEmpty(),
                    cameraDirectionPort: LayerInputEntity = .createEmpty(),
                    isCameraEnabledPort: LayerInputEntity = .createEmpty(),
                    isShadowsEnabledPort: LayerInputEntity = .createEmpty(),
                    
                    shapePort: LayerInputEntity = .createEmpty(),
                    strokePositionPort: LayerInputEntity = .createEmpty(),
                    strokeWidthPort: LayerInputEntity = .createEmpty(),
                    strokeColorPort: LayerInputEntity = .createEmpty(),
                    strokeStartPort: LayerInputEntity = .createEmpty(),
                    strokeEndPort: LayerInputEntity = .createEmpty(),
                    strokeLineCapPort: LayerInputEntity = .createEmpty(),
                    strokeLineJoinPort: LayerInputEntity = .createEmpty(),
                    coordinateSystemPort: LayerInputEntity = .createEmpty(),
                    
                    cornerRadiusPort: LayerInputEntity = .createEmpty(),
                    canvasLineColorPort: LayerInputEntity = .createEmpty(),
                    canvasLineWidthPort: LayerInputEntity = .createEmpty(),
                    canvasPositionPort: LayerInputEntity = .createEmpty(),
                    
                    textPort: LayerInputEntity = .createEmpty(),
                    fontSizePort: LayerInputEntity = .createEmpty(),
                    textAlignmentPort: LayerInputEntity = .createEmpty(),
                    verticalAlignmentPort: LayerInputEntity = .createEmpty(),
                    textDecorationPort: LayerInputEntity = .createEmpty(),
                    textFontPort: LayerInputEntity = .createEmpty(),
                    
                    imagePort: LayerInputEntity = .createEmpty(),
                    videoPort: LayerInputEntity = .createEmpty(),
                    fitStylePort: LayerInputEntity = .createEmpty(),
                    clippedPort: LayerInputEntity = .createEmpty(),
                    isAnimatingPort: LayerInputEntity = .createEmpty(),
                    progressIndicatorStylePort: LayerInputEntity = .createEmpty(),
                    progressPort: LayerInputEntity = .createEmpty(),
                    model3DPort: LayerInputEntity = .createEmpty(),
                    mapTypePort: LayerInputEntity = .createEmpty(),
                    mapLatLongPort: LayerInputEntity = .createEmpty(),
                    mapSpanPort: LayerInputEntity = .createEmpty(),
                    isSwitchToggledPort: LayerInputEntity = .createEmpty(),
                    placeholderTextPort: LayerInputEntity = .createEmpty(),
                    startColorPort: LayerInputEntity = .createEmpty(),
                    endColorPort: LayerInputEntity = .createEmpty(),
                    startAnchorPort: LayerInputEntity = .createEmpty(),
                    endAnchorPort: LayerInputEntity = .createEmpty(),
                    centerAnchorPort: LayerInputEntity = .createEmpty(),
                    startAnglePort: LayerInputEntity = .createEmpty(),
                    endAnglePort: LayerInputEntity = .createEmpty(),
                    startRadiusPort: LayerInputEntity = .createEmpty(),
                    endRadiusPort: LayerInputEntity = .createEmpty(),
                    
                    shadowColorPort: LayerInputEntity = .createEmpty(),
                    shadowOpacityPort: LayerInputEntity = .createEmpty(),
                    shadowRadiusPort: LayerInputEntity = .createEmpty(),
                    shadowOffsetPort: LayerInputEntity = .createEmpty(),
                    
                    sfSymbolPort: LayerInputEntity = .createEmpty(),
                    
                    videoURLPort: LayerInputEntity = .createEmpty(),
                    volumePort: LayerInputEntity = .createEmpty(),
                    
                    spacingBetweenGridColumnsPort: LayerInputEntity = .createEmpty(),
                    spacingBetweenGridRowsPort: LayerInputEntity = .createEmpty(),
                    itemAlignmentWithinGridCellPort: LayerInputEntity = .createEmpty(),
                    
                    sizingScenarioPort: LayerInputEntity = .createEmpty(),
                    
                    widthAxisPort: LayerInputEntity = .createEmpty(),
                    heightAxisPort: LayerInputEntity = .createEmpty(),
                    contentModePort: LayerInputEntity = .createEmpty(),
                    minSizePort: LayerInputEntity = .createEmpty(),
                    maxSizePort: LayerInputEntity = .createEmpty(),
                    spacingPort: LayerInputEntity = .createEmpty(),
                    
                    isPinnedPort: LayerInputEntity = .createEmpty(),
                    pinToPort: LayerInputEntity = .createEmpty(),
                    pinAnchorPort: LayerInputEntity = .createEmpty(),
                    pinOffsetPort: LayerInputEntity = .createEmpty(),
                    
                    layerPaddingPort: LayerInputEntity = .createEmpty(),
                    layerMarginPort: LayerInputEntity = .createEmpty(),
                    offsetInGroupPort: LayerInputEntity = .createEmpty(),
                    layerGroupAlignmentPort: LayerInputEntity = .createEmpty(),
                    
                    deviceAppearancePort: LayerInputEntity = .createEmpty(),
                    materialThicknessPort: LayerInputEntity = .createEmpty(),
                    
                    scrollContentSizePort: LayerInputEntity = .createEmpty(),
                    scrollXEnabledPort: LayerInputEntity = .createEmpty(),
                    scrollJumpToXStylePort: LayerInputEntity = .createEmpty(),
                    scrollJumpToXPort: LayerInputEntity = .createEmpty(),
                    scrollJumpToXLocationPort: LayerInputEntity = .createEmpty(),
                    scrollYEnabledPort: LayerInputEntity = .createEmpty(),
                    scrollJumpToYStylePort: LayerInputEntity = .createEmpty(),
                    scrollJumpToYPort: LayerInputEntity = .createEmpty(),
                    scrollJumpToYLocationPort: LayerInputEntity = .createEmpty(),
                    
                    transform3DPort: LayerInputEntity = .createEmpty(),
                    anchorEntityPort: LayerInputEntity = .createEmpty(),
                    isEntityAnimatingPort: LayerInputEntity = .createEmpty(),
                    translation3DEnabledPort: LayerInputEntity = .createEmpty(),
                    rotation3DEnabledPort: LayerInputEntity = .createEmpty(),
                    scale3DEnabledPort: LayerInputEntity = .createEmpty(),
                    size3DPort: LayerInputEntity = .createEmpty(),
                    radius3DPort: LayerInputEntity = .createEmpty(),
                    height3DPort: LayerInputEntity = .createEmpty(),
                    isMetallicPort: LayerInputEntity = .createEmpty(),

                    hasSidebarVisibility: Bool,
                    layerGroupId: UUID?) {
            self.id = id
            self.layer = layer
            self.outputCanvasPorts = outputCanvasPorts
            
            // Required
            self.positionPort = positionPort
            self.sizePort = sizePort
            self.scalePort = scalePort
            self.anchoringPort = anchoringPort
            self.opacityPort = opacityPort
            self.zIndexPort = zIndexPort
            
            // Common
            self.masksPort = masksPort
            self.colorPort = colorPort
            self.rotationXPort = rotationXPort
            self.rotationYPort = rotationYPort
            self.rotationZPort = rotationZPort
            self.lineColorPort = lineColorPort
            self.lineWidthPort = lineWidthPort
            self.blurPort = blurPort
            self.blendModePort = blendModePort
            self.brightnessPort = brightnessPort
            self.colorInvertPort = colorInvertPort
            self.contrastPort = contrastPort
            self.hueRotationPort = hueRotationPort
            self.saturationPort = saturationPort
            self.pivotPort = pivotPort
            self.enabledPort = enabledPort
            self.blurRadiusPort = blurRadiusPort
            self.backgroundColorPort = backgroundColorPort
            self.isClippedPort = isClippedPort
            self.orientationPort = orientationPort
            
            self.paddingPort = paddingPort
            
            self.setupModePort = setupModePort
            self.cameraDirectionPort = cameraDirectionPort
            self.isCameraEnabledPort = isCameraEnabledPort
            self.isShadowsEnabledPort = isShadowsEnabledPort
            
            self.shapePort = shapePort
            self.strokePositionPort = strokePositionPort
            self.strokeWidthPort = strokeWidthPort
            self.strokeColorPort = strokeColorPort
            self.strokeStartPort = strokeStartPort
            self.strokeEndPort = strokeEndPort
            self.strokeLineCapPort = strokeLineCapPort
            self.strokeLineJoinPort = strokeLineJoinPort
            
            self.coordinateSystemPort = coordinateSystemPort
            self.cornerRadiusPort = cornerRadiusPort
            self.canvasLineColorPort = canvasLineColorPort
            self.canvasLineWidthPort = canvasLineWidthPort
            self.canvasPositionPort = canvasPositionPort
            self.textPort = textPort
            self.fontSizePort = fontSizePort
            self.textAlignmentPort = textAlignmentPort
            self.verticalAlignmentPort = verticalAlignmentPort
            self.textDecorationPort = textDecorationPort
            self.textFontPort = textFontPort
            self.imagePort = imagePort
            self.videoPort = videoPort
            self.fitStylePort = fitStylePort
            self.clippedPort = clippedPort
            self.isAnimatingPort = isAnimatingPort
            self.progressIndicatorStylePort = progressIndicatorStylePort
            self.progressPort = progressPort
            self.model3DPort = model3DPort
            self.mapTypePort = mapTypePort
            self.mapLatLongPort = mapLatLongPort
            self.mapSpanPort = mapSpanPort
            self.isSwitchToggledPort = isSwitchToggledPort
            self.placeholderTextPort = placeholderTextPort
            self.startColorPort = startColorPort
            self.endColorPort = endColorPort
            self.startAnchorPort = startAnchorPort
            self.endAnchorPort = endAnchorPort
            self.centerAnchorPort = centerAnchorPort
            self.startAnglePort = startAnglePort
            self.endAnglePort = endAnglePort
            self.startRadiusPort = startRadiusPort
            self.endRadiusPort = endRadiusPort
            self.hasSidebarVisibility = hasSidebarVisibility
            self.layerGroupId = layerGroupId
            
            self.shadowColorPort = shadowColorPort
            self.shadowOpacityPort = shadowOpacityPort
            self.shadowRadiusPort = shadowRadiusPort
            self.shadowOffsetPort = shadowOffsetPort
            self.sfSymbolPort = sfSymbolPort
            
            self.videoURLPort = videoURLPort
            self.volumePort = volumePort
            
            self.spacingBetweenGridColumnsPort = spacingBetweenGridColumnsPort
            self.spacingBetweenGridRowsPort = spacingBetweenGridRowsPort
            self.itemAlignmentWithinGridCellPort = itemAlignmentWithinGridCellPort
            
            self.sizingScenarioPort = sizingScenarioPort
            
            self.widthAxisPort = widthAxisPort
            self.heightAxisPort = heightAxisPort
            self.contentModePort = contentModePort
            
            self.minSizePort = minSizePort
            self.maxSizePort = maxSizePort
            
            self.spacingPort = spacingPort
            
            self.isPinnedPort = isPinnedPort
            self.pinToPort = pinToPort
            self.pinAnchorPort = pinAnchorPort
            self.pinOffsetPort = pinOffsetPort
            
            self.deviceAppearancePort = deviceAppearancePort
            self.materialThicknessPort = materialThicknessPort
                        
            self.layerPaddingPort = layerPaddingPort
            self.layerMarginPort = layerMarginPort
            self.offsetInGroupPort = offsetInGroupPort
            self.layerGroupAlignmentPort = layerGroupAlignmentPort

            // Scroll layer inputs
            self.scrollContentSizePort = scrollContentSizePort

            self.scrollXEnabledPort = scrollXEnabledPort
            self.scrollJumpToXStylePort = scrollJumpToXStylePort
            self.scrollJumpToXPort = scrollJumpToXPort
            self.scrollJumpToXLocationPort = scrollJumpToXLocationPort

            self.scrollYEnabledPort = scrollYEnabledPort
            self.scrollJumpToYStylePort = scrollJumpToYStylePort
            self.scrollJumpToYPort = scrollJumpToYPort
            self.scrollJumpToYLocationPort = scrollJumpToYLocationPort

            self.transform3DPort = transform3DPort
            self.anchorEntityPort = anchorEntityPort
            self.isEntityAnimatingPort = isEntityAnimatingPort
            self.translation3DEnabledPort = translation3DEnabledPort
            self.rotation3DEnabledPort = rotation3DEnabledPort
            self.scale3DEnabledPort = scale3DEnabledPort
            self.size3DPort = size3DPort
            self.radius3DPort = radius3DPort
            self.height3DPort = height3DPort
            self.isMetallicPort = isMetallicPort
        }
    }
}

extension LayerNodeEntity_V31.LayerNodeEntity: StitchVersionedCodable {
    public init(previousInstance: LayerNodeEntity_V31.PreviousInstance) {
        self.init(id: previousInstance.id,
                  layer: LayerNodeEntity_V31.Layer(previousInstance: previousInstance.layer),
                  outputCanvasPorts: previousInstance.outputCanvasPorts.map { .init(previousInstance: $0) },
                  positionPort: .init(previousInstance: previousInstance.positionPort),
                  sizePort: LayerNodeEntity_V31.LayerInputEntity(previousInstance: previousInstance.sizePort),
                  scalePort: .init(previousInstance: previousInstance.scalePort),
                  anchoringPort: .init(previousInstance: previousInstance.anchoringPort),
                  opacityPort: .init(previousInstance: previousInstance.opacityPort),
                  zIndexPort: .init(previousInstance: previousInstance.zIndexPort),
                  masksPort: .init(previousInstance: previousInstance.masksPort),
                  colorPort: .init(previousInstance: previousInstance.colorPort),
                  
                  rotationXPort: .init(previousInstance: previousInstance.rotationXPort),
                  rotationYPort: .init(previousInstance: previousInstance.rotationYPort),
                  rotationZPort: .init(previousInstance: previousInstance.rotationZPort),
                  
                  lineColorPort: .init(previousInstance: previousInstance.lineColorPort),
                  lineWidthPort: .init(previousInstance: previousInstance.lineWidthPort),
                  blurPort: .init(previousInstance: previousInstance.blurPort),
                  blendModePort: .init(previousInstance: previousInstance.blendModePort),
                  brightnessPort: .init(previousInstance: previousInstance.brightnessPort),
                  colorInvertPort: .init(previousInstance: previousInstance.colorInvertPort),
                  contrastPort: .init(previousInstance: previousInstance.contrastPort),
                  hueRotationPort: .init(previousInstance: previousInstance.hueRotationPort),
                  saturationPort: .init(previousInstance: previousInstance.saturationPort),
                  pivotPort: .init(previousInstance: previousInstance.pivotPort),
                  enabledPort: .init(previousInstance: previousInstance.enabledPort),
                  blurRadiusPort: .init(previousInstance: previousInstance.blurRadiusPort),
                  backgroundColorPort: .init(previousInstance: previousInstance.backgroundColorPort),
                  isClippedPort: .init(previousInstance: previousInstance.isClippedPort),
                  orientationPort: .init(previousInstance: previousInstance.orientationPort),
                  paddingPort: .init(previousInstance: previousInstance.paddingPort),
                  
                  setupModePort: .init(previousInstance: previousInstance.setupModePort),
                  cameraDirectionPort: .init(previousInstance: previousInstance.cameraDirectionPort),
                  isCameraEnabledPort: .init(previousInstance: previousInstance.isCameraEnabledPort),
                  isShadowsEnabledPort: .init(previousInstance: previousInstance.isShadowsEnabledPort),
                  
                  shapePort: .init(previousInstance: previousInstance.shapePort),
                  strokePositionPort: .init(previousInstance: previousInstance.strokePositionPort),
                  strokeWidthPort: .init(previousInstance: previousInstance.strokeWidthPort),
                  strokeColorPort: .init(previousInstance: previousInstance.strokeColorPort),
                  strokeStartPort: .init(previousInstance: previousInstance.strokeStartPort),
                  strokeEndPort: .init(previousInstance: previousInstance.strokeEndPort),
                  strokeLineCapPort: .init(previousInstance: previousInstance.strokeLineCapPort),
                  strokeLineJoinPort: .init(previousInstance: previousInstance.strokeLineJoinPort),
                  coordinateSystemPort: .init(previousInstance: previousInstance.coordinateSystemPort),
                  
                  cornerRadiusPort: .init(previousInstance: previousInstance.cornerRadiusPort),
                  canvasLineColorPort: .init(previousInstance: previousInstance.canvasLineColorPort),
                  canvasLineWidthPort: .init(previousInstance: previousInstance.canvasLineWidthPort),
                  canvasPositionPort: .init(previousInstance: previousInstance.canvasPositionPort),
                  textPort: .init(previousInstance: previousInstance.textPort),
                  fontSizePort: .init(previousInstance: previousInstance.fontSizePort),
                                    
                  textAlignmentPort: .init(previousInstance: previousInstance.textAlignmentPort),
                  verticalAlignmentPort: .init(previousInstance: previousInstance.verticalAlignmentPort),
                  textDecorationPort: .init(previousInstance: previousInstance.textDecorationPort),
                  textFontPort: .init(previousInstance: previousInstance.textFontPort),
                  
                  imagePort: .init(previousInstance: previousInstance.imagePort),
                  videoPort: .init(previousInstance: previousInstance.videoPort),
                  fitStylePort: .init(previousInstance: previousInstance.fitStylePort),
                  clippedPort: .init(previousInstance: previousInstance.clippedPort),
                  isAnimatingPort: .init(previousInstance: previousInstance.isAnimatingPort),
                  progressIndicatorStylePort: .init(previousInstance: previousInstance.progressIndicatorStylePort),
                  progressPort: .init(previousInstance: previousInstance.progressPort),
                  model3DPort: .init(previousInstance: previousInstance.model3DPort),
                  mapTypePort: .init(previousInstance: previousInstance.mapTypePort),
                  mapLatLongPort: .init(previousInstance: previousInstance.mapLatLongPort),
                  mapSpanPort: .init(previousInstance: previousInstance.mapSpanPort),
                  isSwitchToggledPort: .init(previousInstance: previousInstance.isSwitchToggledPort),
                  placeholderTextPort: .init(previousInstance: previousInstance.placeholderTextPort),
                  startColorPort: .init(previousInstance: previousInstance.startColorPort),
                  endColorPort: .init(previousInstance: previousInstance.endColorPort),
                  startAnchorPort: .init(previousInstance: previousInstance.startAnchorPort),
                  endAnchorPort: .init(previousInstance: previousInstance.endAnchorPort),
                  centerAnchorPort: .init(previousInstance: previousInstance.centerAnchorPort),
                  startAnglePort: .init(previousInstance: previousInstance.startAnglePort),
                  endAnglePort: .init(previousInstance: previousInstance.endAnglePort),
                  startRadiusPort: .init(previousInstance: previousInstance.startRadiusPort),
                  endRadiusPort: .init(previousInstance: previousInstance.endRadiusPort),
                  
                  shadowColorPort: .init(previousInstance: previousInstance.shadowColorPort),
                  shadowOpacityPort: .init(previousInstance: previousInstance.shadowOpacityPort),
                  shadowRadiusPort: .init(previousInstance: previousInstance.shadowRadiusPort),
                  shadowOffsetPort: .init(previousInstance: previousInstance.shadowOffsetPort),
                  
                  sfSymbolPort: .init(previousInstance: previousInstance.sfSymbolPort),
                  
                  videoURLPort: .init(previousInstance: previousInstance.videoURLPort),
                  volumePort: .init(previousInstance: previousInstance.volumePort),

                  spacingBetweenGridColumnsPort: .init(previousInstance: previousInstance.spacingBetweenGridColumnsPort),
                  spacingBetweenGridRowsPort: .init(previousInstance: previousInstance.spacingBetweenGridRowsPort),
                  itemAlignmentWithinGridCellPort: .init(previousInstance: previousInstance.itemAlignmentWithinGridCellPort),

                  sizingScenarioPort: .init(previousInstance: previousInstance.sizingScenarioPort),
                  
                  widthAxisPort: .init(previousInstance: previousInstance.widthAxisPort),
                  heightAxisPort: .init(previousInstance: previousInstance.heightAxisPort),
                  contentModePort: .init(previousInstance: previousInstance.contentModePort),
                  minSizePort: .init(previousInstance: previousInstance.minSizePort),
                  maxSizePort: .init(previousInstance: previousInstance.maxSizePort),
                  spacingPort: .init(previousInstance: previousInstance.spacingPort),
                  
                  isPinnedPort: .init(previousInstance: previousInstance.isPinnedPort),
                  pinToPort: .init(previousInstance: previousInstance.pinToPort),
                  pinAnchorPort: .init(previousInstance: previousInstance.pinAnchorPort),
                  pinOffsetPort: .init(previousInstance: previousInstance.pinOffsetPort),

                  layerPaddingPort: .init(previousInstance: previousInstance.layerPaddingPort),
                  layerMarginPort: .init(previousInstance: previousInstance.layerMarginPort),
                  offsetInGroupPort: .init(previousInstance: previousInstance.offsetInGroupPort),
                  
                  layerGroupAlignmentPort: .init(previousInstance: previousInstance.layerGroupAlignmentPort),
                  
                  deviceAppearancePort: .init(previousInstance: previousInstance.deviceAppearancePort),
                  materialThicknessPort: .init(previousInstance: previousInstance.materialThicknessPort),
                  
                  scrollContentSizePort: .init(previousInstance: previousInstance.scrollContentSizePort),

                  scrollXEnabledPort: .init(previousInstance: previousInstance.scrollXEnabledPort),
                  scrollJumpToXStylePort: .init(previousInstance: previousInstance.scrollJumpToXStylePort),
                  scrollJumpToXPort: .init(previousInstance: previousInstance.scrollJumpToXPort),
                  scrollJumpToXLocationPort: .init(previousInstance: previousInstance.scrollJumpToXLocationPort),

                  scrollYEnabledPort: .init(previousInstance: previousInstance.scrollYEnabledPort),
                  scrollJumpToYStylePort: .init(previousInstance: previousInstance.scrollJumpToYStylePort),
                  scrollJumpToYPort: .init(previousInstance: previousInstance.scrollJumpToYPort),
                  scrollJumpToYLocationPort: .init(previousInstance: previousInstance.scrollJumpToYLocationPort),
                  
                  transform3DPort: .init(previousInstance: previousInstance.transform3DPort),
                  anchorEntityPort: .init(previousInstance: previousInstance.anchorEntityPort),
                  isEntityAnimatingPort: .init(previousInstance: previousInstance.isEntityAnimatingPort),

                  hasSidebarVisibility: previousInstance.hasSidebarVisibility,
                  layerGroupId: previousInstance.layerGroupId)
    }
}
