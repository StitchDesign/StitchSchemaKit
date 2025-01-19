//
//  StitchDocument.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/19/23.
//

import Foundation
import SwiftUI

public enum StitchDocument_V29: StitchSchemaVersionable {
    // TODO: remove after version 29
    static let STITCH_GRAPH_LENGTH: CGFloat = 300000

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
        public var localPosition: CGPoint
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
        // TODO: CHANGE AFTER VERSION 29
        
        var migration = Self.init(graph: .init(previousInstance: previousInstance.graph),
                                  previewWindowSize: previousInstance.previewWindowSize,
                                  previewSizeDevice: .init(previousInstance: previousInstance.previewSizeDevice),
                                  previewWindowBackgroundColor: previousInstance.previewWindowBackgroundColor,
                                  localPosition: previousInstance.localPosition,
                                  zoomData: previousInstance.zoomData,
                                  cameraSettings: .init(previousInstance: previousInstance.cameraSettings))
        
        // Move document to western-most node (same logic as graph centering button)
        
        let westernMostPosition = migration.graph.nodes
            .compactMap {
                switch $0.nodeTypeEntity {
                case .patch(let patchNode):
                    return patchNode.canvasEntity.position

                case .group(let canvas):
                    return canvas.position

                default:
                    // we're being lazy not handling layers but all good!
                    return nil
                }
            }
            .max { n, n2 in
                n.x > n2.x
            }

        if let westernMostPosition = westernMostPosition {
            // Move graph to western most node
            migration.localPosition = westernMostPosition
        } else {
            // Divide by 2 in other scenarios
            migration.localPosition.x += StitchDocument_V29.STITCH_GRAPH_LENGTH/2
            migration.localPosition.y += StitchDocument_V29.STITCH_GRAPH_LENGTH/2
        }
        
        self = migration
    }
}
