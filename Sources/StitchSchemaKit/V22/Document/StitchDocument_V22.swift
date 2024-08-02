//
//  StitchDocument.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/19/23.
//

import Foundation
import SwiftUI

public enum StitchDocument_V22: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static let version = StitchSchemaVersion._V22
    public typealias PreviousInstance = StitchDocument_V21.StitchDocument
    public typealias NodeEntitySchemas = [NodeEntity_V22.NodeEntity]
    public typealias CommentBoxes = [CommentBoxData_V22.CommentBoxData]
    public typealias PreviewSize = PreviewSize_V22.PreviewSize
    public typealias SidebarLayerDataList = [SidebarLayerData_V22.SidebarLayerData]
    public typealias CameraSettings = CameraSettings_V22.CameraSettings
    // MARK: - end

    // TODO: transferable
    public struct StitchDocument: StitchVersionedCodable, Equatable {
        public var projectId: ProjectId
        public var name: String

        // Preview window
        public let previewWindowSize: CGSize
        public let previewSizeDevice: PreviewSize
        public let previewWindowBackgroundColor: Color

        // Graph positioning data
        public let localPosition: CGPoint
        public let zoomData: CGFloat

        // Node data
        public var nodes: NodeEntitySchemas
        public var orderedSidebarLayers: SidebarLayerDataList
        public let commentBoxes: CommentBoxes

        public let cameraSettings: CameraSettings

        public init(projectId: ProjectId,
             name: String,
             previewWindowSize: CGSize,
             previewSizeDevice: PreviewSize,
             previewWindowBackgroundColor: Color,
             localPosition: CGPoint,
             zoomData: CGFloat,
             nodes: NodeEntitySchemas,
             orderedSidebarLayers: SidebarLayerDataList,
             commentBoxes: CommentBoxes,
             cameraSettings: CameraSettings) {
            self.projectId = projectId
            self.name = name
            self.previewWindowSize = previewWindowSize
            self.previewSizeDevice = previewSizeDevice
            self.previewWindowBackgroundColor = previewWindowBackgroundColor
            self.localPosition = localPosition
            self.zoomData = zoomData
            self.nodes = nodes
            self.orderedSidebarLayers = orderedSidebarLayers
            self.commentBoxes = commentBoxes
            self.cameraSettings = cameraSettings
        }
        
        // MARK: remove `transferRepresentation` from older `StitchDocument` versions
//        static var transferRepresentation: some TransferRepresentation {
//            FileRepresentation(contentType: .stitchDocument,
//                               exporting: Self.exportDocument,
//                               importing: Self.importDocument)
//        }
    }
}

extension StitchDocument_V22.StitchDocument {
    public init(previousInstance: StitchDocument_V22.PreviousInstance) {
        let nodes = StitchDocument_V22.NodeEntitySchemas(previousElements: previousInstance.nodes)
        
        // Using migrated node data, find connected layer inputs lacking a canvas item.
        // Create the item and locate it near its upstream node
        let adjustedNodes = nodes.map { node in
            switch node.nodeTypeEntity {
            case .layer(var layerNode):
                var node = node
                layerNode.createConnectedCanvasItems(nodes: nodes)
                node.nodeTypeEntity = .layer(layerNode)
                return node
            default:
                return node
            }
        }
        
        self.init(
            projectId: previousInstance.projectId,
            name: previousInstance.name,
            previewWindowSize: previousInstance.previewWindowSize,
            previewSizeDevice: PreviewSize_V22.PreviewSize(previousInstance: previousInstance.previewSizeDevice),
            previewWindowBackgroundColor: previousInstance.previewWindowBackgroundColor,
            localPosition: previousInstance.localPosition,
            zoomData: previousInstance.zoomData,
            nodes: adjustedNodes,
            orderedSidebarLayers: StitchDocument_V22.SidebarLayerDataList(previousElements: previousInstance.orderedSidebarLayers),
            commentBoxes: StitchDocument_V22.CommentBoxes(previousElements: previousInstance.commentBoxes),
            cameraSettings: StitchDocument_V22.CameraSettings(previousInstance: previousInstance.cameraSettings)
        )
    }
}
