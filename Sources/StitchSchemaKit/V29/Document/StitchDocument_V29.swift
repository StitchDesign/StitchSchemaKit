//
//  StitchDocument.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/19/23.
//

import Foundation
import SwiftUI

public enum StitchDocument_V29: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    public static let version = StitchSchemaVersion._V29
    public typealias PreviousInstance = StitchDocument_V28.StitchDocument
    public typealias GraphEntity = GraphEntity_V29.GraphEntity
    public typealias PreviewSize = PreviewSize_V29.PreviewSize
    public typealias CameraSettings = CameraSettings_V29.CameraSettings
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

extension StitchDocument_V29.StitchDocument {
    public init(previousInstance: StitchDocument_V29.PreviousInstance) {
        
        // TODO: remove after version 29
        var localPosition = previousInstance.localPosition
        localPosition.x += STITCH_GRAPH_LENGTH/2
        localPosition.y += STITCH_GRAPH_LENGTH/2
        
        self.init(graph: .init(previousInstance: previousInstance.graph),
                  previewWindowSize: previousInstance.previewWindowSize,
                  previewSizeDevice: .init(previousInstance: previousInstance.previewSizeDevice),
                  previewWindowBackgroundColor: previousInstance.previewWindowBackgroundColor,
                  localPosition: localPosition,
                  zoomData: previousInstance.zoomData,
                  cameraSettings: .init(previousInstance: previousInstance.cameraSettings))
    }
}
