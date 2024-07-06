//
//  LayerNodeEntity_V19.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 12/29/23.
//

import SwiftUI

public enum LayerNodeEntity_V19: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static var version = StitchSchemaVersion._V19
    public typealias PreviousInstance = LayerNodeEntity_V18.LayerNodeEntity
    public typealias NodeEntitySchema = NodeEntity_V19
    public typealias Layer = Layer_V19.Layer
    public typealias NodeConnectionType = NodeConnectionType_V19.NodeConnectionType
    // MARK: - end

    public struct LayerNodeEntity: Equatable {
        public  let id: UUID
        public let layer: Layer
        
        // Value data
        
        // Required
        public var positionPort: NodeConnectionType
        public var sizePort: NodeConnectionType
        public var scalePort: NodeConnectionType
        public var anchoringPort: NodeConnectionType
        public var opacityPort: NodeConnectionType
        public var zIndexPort: NodeConnectionType
        
        // Common
        public var masksPort: NodeConnectionType
        public var colorPort: NodeConnectionType
        public var startColorPort: NodeConnectionType
        public var endColorPort: NodeConnectionType
        public var startAnchorPort: NodeConnectionType
        public var endAnchorPort: NodeConnectionType
        
        public var centerAnchorPort: NodeConnectionType
        public var startAnglePort: NodeConnectionType
        public var endAnglePort: NodeConnectionType
        public var startRadiusPort: NodeConnectionType
        public var endRadiusPort: NodeConnectionType
        public var rotationXPort: NodeConnectionType
        public var rotationYPort: NodeConnectionType
        public var rotationZPort: NodeConnectionType
        public var lineColorPort: NodeConnectionType
        public var lineWidthPort: NodeConnectionType
        public var blurPort: NodeConnectionType
        public var blendModePort: NodeConnectionType
        public var brightnessPort: NodeConnectionType
        public var colorInvertPort: NodeConnectionType
        public var contrastPort: NodeConnectionType
        public var hueRotationPort: NodeConnectionType
        public var saturationPort: NodeConnectionType
        public var pivotPort: NodeConnectionType
        public var enabledPort: NodeConnectionType
        public var blurRadiusPort: NodeConnectionType
        public var backgroundColorPort: NodeConnectionType
        public var isClippedPort: NodeConnectionType
        public var orientationPort: NodeConnectionType
        
        public var paddingPort: NodeConnectionType
        
        public var setupModePort: NodeConnectionType
        public var allAnchorsPort: NodeConnectionType
        public var cameraDirectionPort: NodeConnectionType
        public var isCameraEnabledPort: NodeConnectionType
        public var isShadowsEnabledPort: NodeConnectionType
        
        public var shapePort: NodeConnectionType
        public var strokePositionPort: NodeConnectionType
        public var strokeWidthPort: NodeConnectionType
        public var strokeColorPort: NodeConnectionType
        public var strokeStartPort: NodeConnectionType
        public var strokeEndPort: NodeConnectionType
        public var strokeLineCapPort: NodeConnectionType
        public var strokeLineJoinPort: NodeConnectionType
        public var coordinateSystemPort: NodeConnectionType
        
        public var cornerRadiusPort: NodeConnectionType
        public var canvasLineColorPort: NodeConnectionType
        public var canvasLineWidthPort: NodeConnectionType
        public var canvasPositionPort: NodeConnectionType
        public var textPort: NodeConnectionType
        public var fontSizePort: NodeConnectionType
        public var textAlignmentPort: NodeConnectionType
        public var verticalAlignmentPort: NodeConnectionType
        public var textDecorationPort: NodeConnectionType
        public var textFontPort: NodeConnectionType
        public var imagePort: NodeConnectionType
        public var videoPort: NodeConnectionType
        public var fitStylePort: NodeConnectionType
        public var clippedPort: NodeConnectionType
        public var isAnimatingPort: NodeConnectionType
        public var progressIndicatorStylePort: NodeConnectionType
        public var progressPort: NodeConnectionType
        public var model3DPort: NodeConnectionType
        public var mapTypePort: NodeConnectionType
        public var mapLatLongPort: NodeConnectionType
        public var mapSpanPort: NodeConnectionType
        public var isSwitchToggledPort: NodeConnectionType
        public var placeholderTextPort: NodeConnectionType
        
        public var shadowColorPort: NodeConnectionType
        public var shadowOpacityPort: NodeConnectionType
        public var shadowRadiusPort: NodeConnectionType
        public var shadowOffsetPort: NodeConnectionType
        
        public var sfSymbolPort: NodeConnectionType
        
        public var videoURLPort: NodeConnectionType
        public var volumePort: NodeConnectionType

        public var spacingBetweenGridColumnsPort: NodeConnectionType
        public var spacingBetweenGridRowsPort: NodeConnectionType
        public var itemAlignmentWithinGridCellPort: NodeConnectionType
        
        // Aspect ratio
        public var widthAxisPort: NodeConnectionType
        public var heightAxisPort: NodeConnectionType
        public var contentModePort: NodeConnectionType
        
        // Min/max size
        public var minSizePort: NodeConnectionType
        public var maxSizePort: NodeConnectionType
        
        // Spacing
        public var spacingPort: NodeConnectionType
                
        // Sidebar data
        public let hasSidebarVisibility: Bool
        public let layerGroupId: UUID?
        public let isExpandedInSidebar: Bool?
        
        public init(id: UUID,
                    layer: Layer,
                    positionPort: NodeConnectionType,
                    sizePort: NodeConnectionType,
                    scalePort: NodeConnectionType,
                    anchoringPort: NodeConnectionType,
                    opacityPort: NodeConnectionType,
                    zIndexPort: NodeConnectionType,
                    masksPort: NodeConnectionType,
                    colorPort: NodeConnectionType,
                    
                    rotationXPort: NodeConnectionType,
                    rotationYPort: NodeConnectionType,
                    rotationZPort: NodeConnectionType,
                    
                    lineColorPort: NodeConnectionType,
                    lineWidthPort: NodeConnectionType,
                    blurPort: NodeConnectionType,
                    blendModePort: NodeConnectionType,
                    brightnessPort: NodeConnectionType,
                    colorInvertPort: NodeConnectionType,
                    contrastPort: NodeConnectionType,
                    hueRotationPort: NodeConnectionType,
                    saturationPort: NodeConnectionType,
                    pivotPort: NodeConnectionType,
                    enabledPort: NodeConnectionType,
                    blurRadiusPort: NodeConnectionType,
                    backgroundColorPort: NodeConnectionType,
                    isClippedPort: NodeConnectionType,
                    orientationPort: NodeConnectionType,
                    
                    paddingPort: NodeConnectionType,
                    
                    setupModePort: NodeConnectionType,
                    allAnchorsPort: NodeConnectionType,
                    cameraDirectionPort: NodeConnectionType,
                    isCameraEnabledPort: NodeConnectionType,
                    isShadowsEnabledPort: NodeConnectionType,
                    
                    shapePort: NodeConnectionType,
                    strokePositionPort: NodeConnectionType,
                    strokeWidthPort: NodeConnectionType,
                    strokeColorPort: NodeConnectionType,
                    strokeStartPort: NodeConnectionType,
                    strokeEndPort: NodeConnectionType,
                    strokeLineCapPort: NodeConnectionType,
                    strokeLineJoinPort: NodeConnectionType,
                    coordinateSystemPort: NodeConnectionType,
                    
                    cornerRadiusPort: NodeConnectionType,
                    canvasLineColorPort: NodeConnectionType,
                    canvasLineWidthPort: NodeConnectionType,
                    canvasPositionPort: NodeConnectionType,
                    
                    textPort: NodeConnectionType,
                    fontSizePort: NodeConnectionType,
                    textAlignmentPort: NodeConnectionType,
                    verticalAlignmentPort: NodeConnectionType,
                    textDecorationPort: NodeConnectionType,
                    textFontPort: NodeConnectionType,
                    
                    imagePort: NodeConnectionType,
                    videoPort: NodeConnectionType,
                    fitStylePort: NodeConnectionType,
                    clippedPort: NodeConnectionType,
                    isAnimatingPort: NodeConnectionType,
                    progressIndicatorStylePort: NodeConnectionType,
                    progressPort: NodeConnectionType,
                    model3DPort: NodeConnectionType,
                    mapTypePort: NodeConnectionType,
                    mapLatLongPort: NodeConnectionType,
                    mapSpanPort: NodeConnectionType,
                    isSwitchToggledPort: NodeConnectionType,
                    placeholderTextPort: NodeConnectionType,
                    startColorPort: NodeConnectionType,
                    endColorPort: NodeConnectionType,
                    startAnchorPort: NodeConnectionType,
                    endAnchorPort: NodeConnectionType,
                    centerAnchorPort: NodeConnectionType,
                    startAnglePort: NodeConnectionType,
                    endAnglePort: NodeConnectionType,
                    startRadiusPort: NodeConnectionType,
                    endRadiusPort: NodeConnectionType,
                    
                    shadowColorPort: NodeConnectionType,
                    shadowOpacityPort: NodeConnectionType,
                    shadowRadiusPort: NodeConnectionType,
                    shadowOffsetPort: NodeConnectionType,
                    
                    sfSymbolPort: NodeConnectionType,
                    
                    videoURLPort: NodeConnectionType,
                    volumePort: NodeConnectionType,
                    
                    spacingBetweenGridColumnsPort: NodeConnectionType,
                    spacingBetweenGridRowsPort: NodeConnectionType,
                    itemAlignmentWithinGridCellPort: NodeConnectionType,
                    
                    widthAxisPort: NodeConnectionType,
                    heightAxisPort: NodeConnectionType,
                    contentModePort: NodeConnectionType,
                    minSizePort: NodeConnectionType,
                    maxSizePort: NodeConnectionType,
                    spacingPort: NodeConnectionType,
                    
                    hasSidebarVisibility: Bool,
                    layerGroupId: UUID?,
                    isExpandedInSidebar: Bool?) {
            self.id = id
            self.layer = layer
            
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
            
            self.widthAxisPort = widthAxisPort
            self.heightAxisPort = heightAxisPort
            self.contentModePort = contentModePort
            
            self.minSizePort = minSizePort
            self.maxSizePort = maxSizePort
            
            self.spacingPort = spacingPort
        }
    }
}

extension LayerNodeEntity_V19.LayerNodeEntity: StitchVersionedCodable {
    public init(previousInstance: LayerNodeEntity_V19.PreviousInstance) {
                
        self.init(id: previousInstance.id,
                  layer: LayerNodeEntity_V19.Layer(previousInstance: previousInstance.layer),
                  positionPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.positionPort),
                  sizePort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.sizePort),
                  scalePort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.scalePort),
                  anchoringPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.anchoringPort),
                  opacityPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.opacityPort),
                  zIndexPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.zIndexPort),
                  masksPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.masksPort),
                  colorPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.colorPort),
                  
                  rotationXPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.rotationXPort),
                  rotationYPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.rotationYPort),
                  rotationZPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.rotationZPort),
                  
                  lineColorPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.lineColorPort),
                  lineWidthPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.lineWidthPort),
                  blurPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.blurPort),
                  blendModePort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.blendModePort),
                  brightnessPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.brightnessPort),
                  colorInvertPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.colorInvertPort),
                  contrastPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.contrastPort),
                  hueRotationPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.hueRotationPort),
                  saturationPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.saturationPort),
                  pivotPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.pivotPort),
                  enabledPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.enabledPort),
                  blurRadiusPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.blurRadiusPort),
                  backgroundColorPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.backgroundColorPort),
                  isClippedPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.isClippedPort),
                  orientationPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.orientationPort),
                  
                  // Converting padding from `PortValue.number` to `PortValue.point4D`:
                  paddingPort: .values((previousInstance.paddingPort.getValues ?? [])
                    .map { portValue in
                        switch portValue {
                        case .number(let x):
                            return .point4D(.init(x: x, y: x, z: x, w: x))
                        default: // should not happen?
                            return .point4D(.init(x: 0, y: 0, z: 0, w: 0))
                        }
                    }
                  ),
                  
                  setupModePort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.setupModePort),
                  allAnchorsPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.allAnchorsPort),
                  cameraDirectionPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.cameraDirectionPort),
                  isCameraEnabledPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.isCameraEnabledPort),
                  isShadowsEnabledPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.isShadowsEnabledPort),
                  
                  shapePort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.shapePort),
                  strokePositionPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.strokePositionPort),
                  strokeWidthPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.strokeWidthPort),
                  strokeColorPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.strokeColorPort),
                  strokeStartPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.strokeStartPort),
                  strokeEndPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.strokeEndPort),
                  strokeLineCapPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.strokeLineCapPort),
                  strokeLineJoinPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.strokeLineJoinPort),
                  coordinateSystemPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.coordinateSystemPort),
                  
                  cornerRadiusPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.cornerRadiusPort),
                  canvasLineColorPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.canvasLineColorPort),
                  canvasLineWidthPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.canvasLineWidthPort),
                  canvasPositionPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.canvasPositionPort),
                  textPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.textPort),
                  fontSizePort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.fontSizePort),
                                    
                  textAlignmentPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.textAlignmentPort),
                  verticalAlignmentPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.verticalAlignmentPort),
                  textDecorationPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.textDecorationPort),
                  textFontPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.textFontPort),
                  
                  imagePort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.imagePort),
                  videoPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.videoPort),
                  fitStylePort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.fitStylePort),
                  clippedPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.clippedPort),
                  isAnimatingPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.isAnimatingPort),
                  progressIndicatorStylePort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.progressIndicatorStylePort),
                  progressPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.progressPort),
                  model3DPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.model3DPort),
                  mapTypePort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.mapTypePort),
                  mapLatLongPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.mapLatLongPort),
                  mapSpanPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.mapSpanPort),
                  isSwitchToggledPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.isSwitchToggledPort),
                  placeholderTextPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.placeholderTextPort),
                  startColorPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.startColorPort),
                  endColorPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.endColorPort),
                  startAnchorPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.startAnchorPort),
                  endAnchorPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.endAnchorPort),
                  centerAnchorPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.centerAnchorPort),
                  startAnglePort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.startAnglePort),
                  endAnglePort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.endAnglePort),
                  startRadiusPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.startRadiusPort),
                  endRadiusPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.endRadiusPort),
                  
                  shadowColorPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.shadowColorPort),
                  shadowOpacityPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.shadowOpacityPort),
                  shadowRadiusPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.shadowRadiusPort),
                  shadowOffsetPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.shadowOffsetPort),
                  
                  sfSymbolPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.sfSymbolPort),
                  
                  videoURLPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.videoURLPort),
                  volumePort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.volumePort),

                  spacingBetweenGridColumnsPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.spacingBetweenGridColumnsPort),
                  spacingBetweenGridRowsPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.spacingBetweenGridRowsPort),
                  itemAlignmentWithinGridCellPort: NodeConnectionType_V19.NodeConnectionType(previousInstance: previousInstance.itemAlignmentWithinGridCellPort),

                  // Newly introduced
                  // TODO: should initialize with some default value?
                  widthAxisPort: .values([]),
                  heightAxisPort: .values([]),
                  contentModePort: .values([]),
                  minSizePort: .values([]),
                  maxSizePort: .values([]),
                  spacingPort: .values([]),
                  
                  hasSidebarVisibility: previousInstance.hasSidebarVisibility,
                  layerGroupId: previousInstance.layerGroupId,
                  isExpandedInSidebar: previousInstance.isExpandedInSidebar)
    }
}
