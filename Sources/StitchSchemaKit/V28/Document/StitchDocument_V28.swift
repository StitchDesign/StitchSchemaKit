//
//  StitchDocument.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/19/23.
//

import Foundation
import SwiftUI

public enum StitchDocument_V28: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V28
    public typealias PreviousInstance = StitchDocument_V27.StitchDocument
    public typealias GraphEntity = GraphEntity_V28.GraphEntity
    public typealias PreviewSize = PreviewSize_V28.PreviewSize
    public typealias CameraSettings = CameraSettings_V28.CameraSettings
    // MARK: - end

    public struct StitchDocument: StitchVersionedCodable, Equatable, Sendable {
        // Node data
        public var graph: GraphEntity
        
        // Preview window
        public let previewWindowSize: CGSize
        public let previewSizeDevice: PreviewSize
        public let previewWindowBackgroundColor: Color
        
        // Graph positioning data
        public let localPosition: CGPoint
        public let zoomData: CGFloat
        
        public let cameraSettings: CameraSettings
        
        public init(graph: GraphEntity,
                    previewWindowSize: CGSize,
                    previewSizeDevice: PreviewSize,
                    previewWindowBackgroundColor: Color,
                    localPosition: CGPoint,
                    zoomData: CGFloat,
                    cameraSettings: CameraSettings) {
            self.graph = graph
            self.previewWindowSize = previewWindowSize
            self.previewSizeDevice = previewSizeDevice
            self.previewWindowBackgroundColor = previewWindowBackgroundColor
            self.localPosition = localPosition
            self.zoomData = zoomData
            self.cameraSettings = cameraSettings
        }
    }
}

extension StitchDocument_V28.StitchDocument {
    public init(previousInstance: StitchDocument_V28.PreviousInstance) {
        self.init(graph: .init(id: previousInstance.graph.id,
                               name: previousInstance.graph.name,
                               nodes: .init(previousElements: previousInstance.graph.nodes),
                               orderedSidebarLayers: .init(previousElements: previousInstance.graph.orderedSidebarLayers),
                               commentBoxes: .init(previousElements: previousInstance.graph.commentBoxes)),
                  previewWindowSize: previousInstance.previewWindowSize,
                  previewSizeDevice: .init(previousInstance: previousInstance.previewSizeDevice),
                  previewWindowBackgroundColor: previousInstance.previewWindowBackgroundColor,
                  localPosition: previousInstance.localPosition,
                  zoomData: previousInstance.zoomData,
                  cameraSettings: .init(previousInstance: previousInstance.cameraSettings))
    }
}
