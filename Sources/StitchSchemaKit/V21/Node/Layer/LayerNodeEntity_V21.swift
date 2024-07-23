//
//  LayerNodeEntity_V21.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 12/29/23.
//

import SwiftUI

public enum LayerNodeEntity_V21: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static var version = StitchSchemaVersion._V21
    public typealias PreviousInstance = LayerNodeEntity_V20.LayerNodeEntity
    public typealias CanvasNodeEntity = CanvasNodeEntity_V21.CanvasNodeEntity
    public typealias Layer = Layer_V21.Layer
    public typealias LayerInputDataEntity = LayerInputDataEntity_V21.LayerInputDataEntity
    public typealias NodeConnectionType = NodeConnectionType_V21.NodeConnectionType
    // MARK: - end

    public struct LayerNodeEntity: Equatable {
        public  let id: UUID
        public let layer: Layer
        
        // Optional node entities for layer node outputs
        public var outputCanvasPorts: [CanvasNodeEntity?]
        
        // Required
        public var positionPort: LayerInputDataEntity
        public var sizePort: LayerInputDataEntity
        public var scalePort: LayerInputDataEntity
        public var anchoringPort: LayerInputDataEntity
        public var opacityPort: LayerInputDataEntity
        public var zIndexPort: LayerInputDataEntity
        
        // Common
        public var masksPort: LayerInputDataEntity
        public var colorPort: LayerInputDataEntity
        public var startColorPort: LayerInputDataEntity
        public var endColorPort: LayerInputDataEntity
        public var startAnchorPort: LayerInputDataEntity
        public var endAnchorPort: LayerInputDataEntity
        
        public var centerAnchorPort: LayerInputDataEntity
        public var startAnglePort: LayerInputDataEntity
        public var endAnglePort: LayerInputDataEntity
        public var startRadiusPort: LayerInputDataEntity
        public var endRadiusPort: LayerInputDataEntity
        public var rotationXPort: LayerInputDataEntity
        public var rotationYPort: LayerInputDataEntity
        public var rotationZPort: LayerInputDataEntity
        public var lineColorPort: LayerInputDataEntity
        public var lineWidthPort: LayerInputDataEntity
        public var blurPort: LayerInputDataEntity
        public var blendModePort: LayerInputDataEntity
        public var brightnessPort: LayerInputDataEntity
        public var colorInvertPort: LayerInputDataEntity
        public var contrastPort: LayerInputDataEntity
        public var hueRotationPort: LayerInputDataEntity
        public var saturationPort: LayerInputDataEntity
        public var pivotPort: LayerInputDataEntity
        public var enabledPort: LayerInputDataEntity
        public var blurRadiusPort: LayerInputDataEntity
        public var backgroundColorPort: LayerInputDataEntity
        public var isClippedPort: LayerInputDataEntity
        public var orientationPort: LayerInputDataEntity
        
        public var paddingPort: LayerInputDataEntity
        
        public var setupModePort: LayerInputDataEntity
        public var allAnchorsPort: LayerInputDataEntity
        public var cameraDirectionPort: LayerInputDataEntity
        public var isCameraEnabledPort: LayerInputDataEntity
        public var isShadowsEnabledPort: LayerInputDataEntity
        
        public var shapePort: LayerInputDataEntity
        public var strokePositionPort: LayerInputDataEntity
        public var strokeWidthPort: LayerInputDataEntity
        public var strokeColorPort: LayerInputDataEntity
        public var strokeStartPort: LayerInputDataEntity
        public var strokeEndPort: LayerInputDataEntity
        public var strokeLineCapPort: LayerInputDataEntity
        public var strokeLineJoinPort: LayerInputDataEntity
        public var coordinateSystemPort: LayerInputDataEntity
        
        public var cornerRadiusPort: LayerInputDataEntity
        public var canvasLineColorPort: LayerInputDataEntity
        public var canvasLineWidthPort: LayerInputDataEntity
        public var canvasPositionPort: LayerInputDataEntity
        public var textPort: LayerInputDataEntity
        public var fontSizePort: LayerInputDataEntity
        public var textAlignmentPort: LayerInputDataEntity
        public var verticalAlignmentPort: LayerInputDataEntity
        public var textDecorationPort: LayerInputDataEntity
        public var textFontPort: LayerInputDataEntity
        public var imagePort: LayerInputDataEntity
        public var videoPort: LayerInputDataEntity
        public var fitStylePort: LayerInputDataEntity
        public var clippedPort: LayerInputDataEntity
        public var isAnimatingPort: LayerInputDataEntity
        public var progressIndicatorStylePort: LayerInputDataEntity
        public var progressPort: LayerInputDataEntity
        public var model3DPort: LayerInputDataEntity
        public var mapTypePort: LayerInputDataEntity
        public var mapLatLongPort: LayerInputDataEntity
        public var mapSpanPort: LayerInputDataEntity
        public var isSwitchToggledPort: LayerInputDataEntity
        public var placeholderTextPort: LayerInputDataEntity
        
        public var shadowColorPort: LayerInputDataEntity
        public var shadowOpacityPort: LayerInputDataEntity
        public var shadowRadiusPort: LayerInputDataEntity
        public var shadowOffsetPort: LayerInputDataEntity
        
        public var sfSymbolPort: LayerInputDataEntity
        
        public var videoURLPort: LayerInputDataEntity
        public var volumePort: LayerInputDataEntity

        public var spacingBetweenGridColumnsPort: LayerInputDataEntity
        public var spacingBetweenGridRowsPort: LayerInputDataEntity
        public var itemAlignmentWithinGridCellPort: LayerInputDataEntity
        
        public var sizingScenarioPort: LayerInputDataEntity
        
        // Aspect ratio
        public var widthAxisPort: LayerInputDataEntity
        public var heightAxisPort: LayerInputDataEntity
        public var contentModePort: LayerInputDataEntity
        
        // Min/max size
        public var minSizePort: LayerInputDataEntity
        public var maxSizePort: LayerInputDataEntity
        
        // Spacing
        public var spacingPort: LayerInputDataEntity
                
        // Sidebar data
        public let hasSidebarVisibility: Bool
        public let layerGroupId: UUID?
        public let isExpandedInSidebar: Bool?
        
        public init(id: UUID,
                    layer: Layer,
                    outputCanvasPorts: [CanvasNodeEntity?],
                    positionPort: LayerInputDataEntity,
                    sizePort: LayerInputDataEntity,
                    scalePort: LayerInputDataEntity,
                    anchoringPort: LayerInputDataEntity,
                    opacityPort: LayerInputDataEntity,
                    zIndexPort: LayerInputDataEntity,
                    masksPort: LayerInputDataEntity,
                    colorPort: LayerInputDataEntity,
                    
                    rotationXPort: LayerInputDataEntity,
                    rotationYPort: LayerInputDataEntity,
                    rotationZPort: LayerInputDataEntity,
                    
                    lineColorPort: LayerInputDataEntity,
                    lineWidthPort: LayerInputDataEntity,
                    blurPort: LayerInputDataEntity,
                    blendModePort: LayerInputDataEntity,
                    brightnessPort: LayerInputDataEntity,
                    colorInvertPort: LayerInputDataEntity,
                    contrastPort: LayerInputDataEntity,
                    hueRotationPort: LayerInputDataEntity,
                    saturationPort: LayerInputDataEntity,
                    pivotPort: LayerInputDataEntity,
                    enabledPort: LayerInputDataEntity,
                    blurRadiusPort: LayerInputDataEntity,
                    backgroundColorPort: LayerInputDataEntity,
                    isClippedPort: LayerInputDataEntity,
                    orientationPort: LayerInputDataEntity,
                    
                    paddingPort: LayerInputDataEntity,
                    
                    setupModePort: LayerInputDataEntity,
                    allAnchorsPort: LayerInputDataEntity,
                    cameraDirectionPort: LayerInputDataEntity,
                    isCameraEnabledPort: LayerInputDataEntity,
                    isShadowsEnabledPort: LayerInputDataEntity,
                    
                    shapePort: LayerInputDataEntity,
                    strokePositionPort: LayerInputDataEntity,
                    strokeWidthPort: LayerInputDataEntity,
                    strokeColorPort: LayerInputDataEntity,
                    strokeStartPort: LayerInputDataEntity,
                    strokeEndPort: LayerInputDataEntity,
                    strokeLineCapPort: LayerInputDataEntity,
                    strokeLineJoinPort: LayerInputDataEntity,
                    coordinateSystemPort: LayerInputDataEntity,
                    
                    cornerRadiusPort: LayerInputDataEntity,
                    canvasLineColorPort: LayerInputDataEntity,
                    canvasLineWidthPort: LayerInputDataEntity,
                    canvasPositionPort: LayerInputDataEntity,
                    
                    textPort: LayerInputDataEntity,
                    fontSizePort: LayerInputDataEntity,
                    textAlignmentPort: LayerInputDataEntity,
                    verticalAlignmentPort: LayerInputDataEntity,
                    textDecorationPort: LayerInputDataEntity,
                    textFontPort: LayerInputDataEntity,
                    
                    imagePort: LayerInputDataEntity,
                    videoPort: LayerInputDataEntity,
                    fitStylePort: LayerInputDataEntity,
                    clippedPort: LayerInputDataEntity,
                    isAnimatingPort: LayerInputDataEntity,
                    progressIndicatorStylePort: LayerInputDataEntity,
                    progressPort: LayerInputDataEntity,
                    model3DPort: LayerInputDataEntity,
                    mapTypePort: LayerInputDataEntity,
                    mapLatLongPort: LayerInputDataEntity,
                    mapSpanPort: LayerInputDataEntity,
                    isSwitchToggledPort: LayerInputDataEntity,
                    placeholderTextPort: LayerInputDataEntity,
                    startColorPort: LayerInputDataEntity,
                    endColorPort: LayerInputDataEntity,
                    startAnchorPort: LayerInputDataEntity,
                    endAnchorPort: LayerInputDataEntity,
                    centerAnchorPort: LayerInputDataEntity,
                    startAnglePort: LayerInputDataEntity,
                    endAnglePort: LayerInputDataEntity,
                    startRadiusPort: LayerInputDataEntity,
                    endRadiusPort: LayerInputDataEntity,
                    
                    shadowColorPort: LayerInputDataEntity,
                    shadowOpacityPort: LayerInputDataEntity,
                    shadowRadiusPort: LayerInputDataEntity,
                    shadowOffsetPort: LayerInputDataEntity,
                    
                    sfSymbolPort: LayerInputDataEntity,
                    
                    videoURLPort: LayerInputDataEntity,
                    volumePort: LayerInputDataEntity,
                    
                    spacingBetweenGridColumnsPort: LayerInputDataEntity,
                    spacingBetweenGridRowsPort: LayerInputDataEntity,
                    itemAlignmentWithinGridCellPort: LayerInputDataEntity,
                    
                    sizingScenarioPort: LayerInputDataEntity,
                    
                    widthAxisPort: LayerInputDataEntity,
                    heightAxisPort: LayerInputDataEntity,
                    contentModePort: LayerInputDataEntity,
                    minSizePort: LayerInputDataEntity,
                    maxSizePort: LayerInputDataEntity,
                    spacingPort: LayerInputDataEntity,
                    
                    hasSidebarVisibility: Bool,
                    layerGroupId: UUID?,
                    isExpandedInSidebar: Bool?) {     
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
            self.allAnchorsPort = allAnchorsPort
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
            self.isExpandedInSidebar = isExpandedInSidebar
            
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
        }
    }
}

extension LayerNodeEntity_V21.LayerNodeEntity: StitchVersionedCodable {
    public init(previousInstance: LayerNodeEntity_V21.PreviousInstance) {
                
        let outputSupportedLayers: [Layer_V20.Layer] = [.textField, .canvasSketch, .switchLayer]
        let containsOutputs = outputSupportedLayers.contains(previousInstance.layer)
        
        self.init(id: previousInstance.id,
                  layer: LayerNodeEntity_V21.Layer(previousInstance: previousInstance.layer),
                  outputCanvasPorts: containsOutputs ? [nil] : [],
                  positionPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.positionPort)),
                  sizePort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.sizePort)),
                  scalePort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.scalePort)),
                  anchoringPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.anchoringPort)),
                  opacityPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.opacityPort)),
                  zIndexPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.zIndexPort)),
                  masksPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.masksPort)),
                  colorPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.colorPort)),
                  
                  rotationXPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.rotationXPort)),
                  rotationYPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.rotationYPort)),
                  rotationZPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.rotationZPort)),
                  
                  lineColorPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.lineColorPort)),
                  lineWidthPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.lineWidthPort)),
                  blurPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.blurPort)),
                  blendModePort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.blendModePort)),
                  brightnessPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.brightnessPort)),
                  colorInvertPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.colorInvertPort)),
                  contrastPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.contrastPort)),
                  hueRotationPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.hueRotationPort)),
                  saturationPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.saturationPort)),
                  pivotPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.pivotPort)),
                  enabledPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.enabledPort)),
                  blurRadiusPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.blurRadiusPort)),
                  backgroundColorPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.backgroundColorPort)),
                  isClippedPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.isClippedPort)),
                  orientationPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.orientationPort)),
                  paddingPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.paddingPort)),
                  
                  setupModePort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.setupModePort)),
                  allAnchorsPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.allAnchorsPort)),
                  cameraDirectionPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.cameraDirectionPort)),
                  isCameraEnabledPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.isCameraEnabledPort)),
                  isShadowsEnabledPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.isShadowsEnabledPort)),
                  
                  shapePort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.shapePort)),
                  strokePositionPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.strokePositionPort)),
                  strokeWidthPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.strokeWidthPort)),
                  strokeColorPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.strokeColorPort)),
                  strokeStartPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.strokeStartPort)),
                  strokeEndPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.strokeEndPort)),
                  strokeLineCapPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.strokeLineCapPort)),
                  strokeLineJoinPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.strokeLineJoinPort)),
                  coordinateSystemPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.coordinateSystemPort)),
                  
                  cornerRadiusPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.cornerRadiusPort)),
                  canvasLineColorPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.canvasLineColorPort)),
                  canvasLineWidthPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.canvasLineWidthPort)),
                  canvasPositionPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.canvasPositionPort)),
                  textPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.textPort)),
                  fontSizePort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.fontSizePort)),
                                    
                  textAlignmentPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.textAlignmentPort)),
                  verticalAlignmentPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.verticalAlignmentPort)),
                  textDecorationPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.textDecorationPort)),
                  textFontPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.textFontPort)),
                  
                  imagePort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.imagePort)),
                  videoPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.videoPort)),
                  fitStylePort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.fitStylePort)),
                  clippedPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.clippedPort)),
                  isAnimatingPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.isAnimatingPort)),
                  progressIndicatorStylePort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.progressIndicatorStylePort)),
                  progressPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.progressPort)),
                  model3DPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.model3DPort)),
                  mapTypePort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.mapTypePort)),
                  mapLatLongPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.mapLatLongPort)),
                  mapSpanPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.mapSpanPort)),
                  isSwitchToggledPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.isSwitchToggledPort)),
                  placeholderTextPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.placeholderTextPort)),
                  startColorPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.startColorPort)),
                  endColorPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.endColorPort)),
                  startAnchorPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.startAnchorPort)),
                  endAnchorPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.endAnchorPort)),
                  centerAnchorPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.centerAnchorPort)),
                  startAnglePort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.startAnglePort)),
                  endAnglePort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.endAnglePort)),
                  startRadiusPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.startRadiusPort)),
                  endRadiusPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.endRadiusPort)),
                  
                  shadowColorPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.shadowColorPort)),
                  shadowOpacityPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.shadowOpacityPort)),
                  shadowRadiusPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.shadowRadiusPort)),
                  shadowOffsetPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.shadowOffsetPort)),
                  
                  sfSymbolPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.sfSymbolPort)),
                  
                  videoURLPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.videoURLPort)),
                  volumePort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.volumePort)),

                  spacingBetweenGridColumnsPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.spacingBetweenGridColumnsPort)),
                  spacingBetweenGridRowsPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.spacingBetweenGridRowsPort)),
                  itemAlignmentWithinGridCellPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.itemAlignmentWithinGridCellPort)),

                  sizingScenarioPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType.values([])),
                  
                  widthAxisPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.widthAxisPort)),
                  heightAxisPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.heightAxisPort)),
                  contentModePort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.contentModePort)),
                  minSizePort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.minSizePort)),
                  maxSizePort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.maxSizePort)),
                  spacingPort: .init(inputPort: NodeConnectionType_V21.NodeConnectionType(previousInstance: previousInstance.spacingPort)),
                  
                  hasSidebarVisibility: previousInstance.hasSidebarVisibility,
                  layerGroupId: previousInstance.layerGroupId,
                  isExpandedInSidebar: previousInstance.isExpandedInSidebar)
    }
}
