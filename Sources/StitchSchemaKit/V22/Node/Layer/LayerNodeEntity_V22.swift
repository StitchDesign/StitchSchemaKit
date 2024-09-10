//
//  LayerNodeEntity_V22.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 12/29/23.
//

import SwiftUI

public enum LayerNodeEntity_V22: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V22
    public typealias PreviousInstance = LayerNodeEntity_V21.LayerNodeEntity
    public typealias CanvasNodeEntity = CanvasNodeEntity_V22.CanvasNodeEntity
    public typealias Layer = Layer_V22.Layer
    public typealias LayerInputDataEntity = LayerInputDataEntity_V22.LayerInputDataEntity
    public typealias NodeConnectionType = NodeConnectionType_V22.NodeConnectionType
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

extension LayerNodeEntity_V22.LayerNodeEntity: StitchVersionedCodable {
    public init(previousInstance: LayerNodeEntity_V22.PreviousInstance) {
        self.init(id: previousInstance.id,
                  layer: LayerNodeEntity_V22.Layer(previousInstance: previousInstance.layer),
                  outputCanvasPorts: previousInstance.outputCanvasPorts.map { .init(previousInstance: $0) },
                  positionPort: .init(previousInstance: previousInstance.positionPort),
                  sizePort: .init(previousInstance: previousInstance.sizePort),
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
                  allAnchorsPort: .init(previousInstance: previousInstance.allAnchorsPort),
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

                  sizingScenarioPort: .init(inputPort: NodeConnectionType_V22.NodeConnectionType.values([])),
                  
                  widthAxisPort: .init(previousInstance: previousInstance.widthAxisPort),
                  heightAxisPort: .init(previousInstance: previousInstance.heightAxisPort),
                  contentModePort: .init(previousInstance: previousInstance.contentModePort),
                  minSizePort: .init(previousInstance: previousInstance.minSizePort),
                  maxSizePort: .init(previousInstance: previousInstance.maxSizePort),
                  spacingPort: .init(previousInstance: previousInstance.spacingPort),
                  
                  // New, so initialized as empty; will be populated by Stitch's `defaultValue(for:)`
//                  isPinnedPort: .init(inputPort: .values([])),
//                  pinToPort: .init(inputPort: .values([])),
//                  pinAnchorPort: .init(inputPort: .values([])),
//                  pinOffsetPort: .init(inputPort: .values([])),
                  
                  hasSidebarVisibility: previousInstance.hasSidebarVisibility,
                  layerGroupId: previousInstance.layerGroupId,
                  isExpandedInSidebar: previousInstance.isExpandedInSidebar)
    }
    
    // MARK: remove this helper after V22
    func createConnectedOutputCanvases(nodes: [NodeEntity_V22.NodeEntity]) -> [CanvasNodeEntity_V22.CanvasNodeEntity?] {
        let outputSupportedLayers: [Layer_V22.Layer] = [.textField, .canvasSketch, .switchLayer]
        
        guard let connectedDownstreamNode = nodes.first(where: { node in
            node.getUpstreamNodeIds().contains(self.id)
        }) else {
            // No connection to this node
            return []
        }
        
        guard let downstreamCanvas = connectedDownstreamNode.getCanvas() else {
            #if DEBUG
            fatalError()
            #endif
            return []
        }
        
        var outputLayerCanvas = downstreamCanvas
        outputLayerCanvas.zIndex += 1
        outputLayerCanvas.position = .init(x: downstreamCanvas.position.x - 450,
                                           y: downstreamCanvas.position.y)
        
        // Change parent group if downstream node is input splitter
        switch connectedDownstreamNode.nodeTypeEntity {
        case .patch(let patchNode):
            if patchNode.splitterNode?.type == .input {
                guard let groupNodeId = downstreamCanvas.parentGroupNodeId,
                      let groupNode = nodes.first(where: { $0.id == groupNodeId }),
                      let groupCanvas = groupNode.getCanvas() else {
                    #if DEBUG
                    fatalError()
                    #endif
                    return []
                }
                
                outputLayerCanvas.parentGroupNodeId = groupCanvas.parentGroupNodeId
                outputLayerCanvas.position = CGPoint(x: groupCanvas.position.x - 450,
                                                     y: groupCanvas.position.y)
            }
            
        default:
            break
        }
        
        return [outputLayerCanvas]
    }
    
    // MARK: remove this helper after V22
    mutating func createConnectedCanvasItems(nodes: [NodeEntity_V22.NodeEntity]) {
        self.outputCanvasPorts = self.createConnectedOutputCanvases(nodes: nodes)
        
        self.positionPort.createConnectedCanvas(nodes: nodes)
        self.sizePort.createConnectedCanvas(nodes: nodes)
        self.scalePort.createConnectedCanvas(nodes: nodes)
        self.anchoringPort.createConnectedCanvas(nodes: nodes)
        self.opacityPort.createConnectedCanvas(nodes: nodes)
        self.zIndexPort.createConnectedCanvas(nodes: nodes)
        self.masksPort.createConnectedCanvas(nodes: nodes)
        self.colorPort.createConnectedCanvas(nodes: nodes)
    
        self.rotationXPort.createConnectedCanvas(nodes: nodes)
        self.rotationYPort.createConnectedCanvas(nodes: nodes)
        self.rotationZPort.createConnectedCanvas(nodes: nodes)
    
        self.lineColorPort.createConnectedCanvas(nodes: nodes)
        self.lineWidthPort.createConnectedCanvas(nodes: nodes)
        self.blurPort.createConnectedCanvas(nodes: nodes)
        self.blendModePort.createConnectedCanvas(nodes: nodes)
        self.brightnessPort.createConnectedCanvas(nodes: nodes)
        self.colorInvertPort.createConnectedCanvas(nodes: nodes)
        self.contrastPort.createConnectedCanvas(nodes: nodes)
        self.hueRotationPort.createConnectedCanvas(nodes: nodes)
        self.saturationPort.createConnectedCanvas(nodes: nodes)
        self.pivotPort.createConnectedCanvas(nodes: nodes)
        self.enabledPort.createConnectedCanvas(nodes: nodes)
        self.blurRadiusPort.createConnectedCanvas(nodes: nodes)
        self.backgroundColorPort.createConnectedCanvas(nodes: nodes)
        self.isClippedPort.createConnectedCanvas(nodes: nodes)
        self.orientationPort.createConnectedCanvas(nodes: nodes)
        self.paddingPort.createConnectedCanvas(nodes: nodes)
    
        self.setupModePort.createConnectedCanvas(nodes: nodes)
        self.allAnchorsPort.createConnectedCanvas(nodes: nodes)
        self.cameraDirectionPort.createConnectedCanvas(nodes: nodes)
        self.isCameraEnabledPort.createConnectedCanvas(nodes: nodes)
        self.isShadowsEnabledPort.createConnectedCanvas(nodes: nodes)
    
        self.shapePort.createConnectedCanvas(nodes: nodes)
        self.strokePositionPort.createConnectedCanvas(nodes: nodes)
        self.strokeWidthPort.createConnectedCanvas(nodes: nodes)
        self.strokeColorPort.createConnectedCanvas(nodes: nodes)
        self.strokeStartPort.createConnectedCanvas(nodes: nodes)
        self.strokeEndPort.createConnectedCanvas(nodes: nodes)
        self.strokeLineCapPort.createConnectedCanvas(nodes: nodes)
        self.strokeLineJoinPort.createConnectedCanvas(nodes: nodes)
        self.coordinateSystemPort.createConnectedCanvas(nodes: nodes)
    
        self.cornerRadiusPort.createConnectedCanvas(nodes: nodes)
        self.canvasLineColorPort.createConnectedCanvas(nodes: nodes)
        self.canvasLineWidthPort.createConnectedCanvas(nodes: nodes)
        self.canvasPositionPort.createConnectedCanvas(nodes: nodes)
        self.textPort.createConnectedCanvas(nodes: nodes)
        self.fontSizePort.createConnectedCanvas(nodes: nodes)
                      
        self.textAlignmentPort.createConnectedCanvas(nodes: nodes)
        self.verticalAlignmentPort.createConnectedCanvas(nodes: nodes)
        self.textDecorationPort.createConnectedCanvas(nodes: nodes)
        self.textFontPort.createConnectedCanvas(nodes: nodes)
    
        self.imagePort.createConnectedCanvas(nodes: nodes)
        self.videoPort.createConnectedCanvas(nodes: nodes)
        self.fitStylePort.createConnectedCanvas(nodes: nodes)
        self.clippedPort.createConnectedCanvas(nodes: nodes)
        self.isAnimatingPort.createConnectedCanvas(nodes: nodes)
        self.progressIndicatorStylePort.createConnectedCanvas(nodes: nodes)
        self.progressPort.createConnectedCanvas(nodes: nodes)
        self.model3DPort.createConnectedCanvas(nodes: nodes)
        self.mapTypePort.createConnectedCanvas(nodes: nodes)
        self.mapLatLongPort.createConnectedCanvas(nodes: nodes)
        self.mapSpanPort.createConnectedCanvas(nodes: nodes)
        self.isSwitchToggledPort.createConnectedCanvas(nodes: nodes)
        self.placeholderTextPort.createConnectedCanvas(nodes: nodes)
        self.startColorPort.createConnectedCanvas(nodes: nodes)
        self.endColorPort.createConnectedCanvas(nodes: nodes)
        self.startAnchorPort.createConnectedCanvas(nodes: nodes)
        self.endAnchorPort.createConnectedCanvas(nodes: nodes)
        self.centerAnchorPort.createConnectedCanvas(nodes: nodes)
        self.startAnglePort.createConnectedCanvas(nodes: nodes)
        self.endAnglePort.createConnectedCanvas(nodes: nodes)
        self.startRadiusPort.createConnectedCanvas(nodes: nodes)
        self.endRadiusPort.createConnectedCanvas(nodes: nodes)
    
        self.shadowColorPort.createConnectedCanvas(nodes: nodes)
        self.shadowOpacityPort.createConnectedCanvas(nodes: nodes)
        self.shadowRadiusPort.createConnectedCanvas(nodes: nodes)
        self.shadowOffsetPort.createConnectedCanvas(nodes: nodes)
    
        self.sfSymbolPort.createConnectedCanvas(nodes: nodes)
    
        self.videoURLPort.createConnectedCanvas(nodes: nodes)
        self.volumePort.createConnectedCanvas(nodes: nodes)

        self.spacingBetweenGridColumnsPort.createConnectedCanvas(nodes: nodes)
        self.spacingBetweenGridRowsPort.createConnectedCanvas(nodes: nodes)
        self.itemAlignmentWithinGridCellPort.createConnectedCanvas(nodes: nodes)

        self.sizingScenarioPort.createConnectedCanvas(nodes: nodes)
    
        self.widthAxisPort.createConnectedCanvas(nodes: nodes)
        self.heightAxisPort.createConnectedCanvas(nodes: nodes)
        self.contentModePort.createConnectedCanvas(nodes: nodes)
        self.minSizePort.createConnectedCanvas(nodes: nodes)
        self.maxSizePort.createConnectedCanvas(nodes: nodes)
        self.spacingPort.createConnectedCanvas(nodes: nodes)
    }
    
    // MARK: remove this helper after V22
    func getConnectedUpstreamNodeIds() -> Set<UUID> {
        let ids = self.getAllInputPorts().compactMap {
            $0.inputPort.getUpstreamConnection?.nodeId
        }
        
        return Set(ids)
    }
    
    // MARK: remove this helper after V22
    func getAllInputPorts() -> [LayerInputDataEntity_V22.LayerInputDataEntity] {
        return [
            positionPort,
            sizePort,
            scalePort,
            anchoringPort,
            opacityPort,
            zIndexPort,
            masksPort,
            colorPort,
            
            rotationXPort,
            rotationYPort,
            rotationZPort,
            
            lineColorPort,
            lineWidthPort,
            blurPort,
            blendModePort,
            brightnessPort,
            colorInvertPort,
            contrastPort,
            hueRotationPort,
            saturationPort,
            pivotPort,
            enabledPort,
            blurRadiusPort,
            backgroundColorPort,
            isClippedPort,
            orientationPort,
            paddingPort,
            
            setupModePort,
            allAnchorsPort,
            cameraDirectionPort,
            isCameraEnabledPort,
            isShadowsEnabledPort,
            
            shapePort,
            strokePositionPort,
            strokeWidthPort,
            strokeColorPort,
            strokeStartPort,
            strokeEndPort,
            strokeLineCapPort,
            strokeLineJoinPort,
            coordinateSystemPort,
            
            cornerRadiusPort,
            canvasLineColorPort,
            canvasLineWidthPort,
            canvasPositionPort,
            textPort,
            fontSizePort,
            
            textAlignmentPort,
            verticalAlignmentPort,
            textDecorationPort,
            textFontPort,
            
            imagePort,
            videoPort,
            fitStylePort,
            clippedPort,
            isAnimatingPort,
            progressIndicatorStylePort,
            progressPort,
            model3DPort,
            mapTypePort,
            mapLatLongPort,
            mapSpanPort,
            isSwitchToggledPort,
            placeholderTextPort,
            startColorPort,
            endColorPort,
            startAnchorPort,
            endAnchorPort,
            centerAnchorPort,
            startAnglePort,
            endAnglePort,
            startRadiusPort,
            endRadiusPort,
            
            shadowColorPort,
            shadowOpacityPort,
            shadowRadiusPort,
            shadowOffsetPort,
            
            sfSymbolPort,
            
            videoURLPort,
            volumePort,
            
            spacingBetweenGridColumnsPort,
            spacingBetweenGridRowsPort,
            itemAlignmentWithinGridCellPort,
            
            sizingScenarioPort,
            
            widthAxisPort,
            heightAxisPort,
            contentModePort,
            minSizePort,
            maxSizePort,
            spacingPort
        ]
    }
}
