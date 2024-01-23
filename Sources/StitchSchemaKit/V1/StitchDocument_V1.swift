//
//  StitchDocument.swift
//  Stitch
//
//  Created by Elliot Boschwitz on 10/19/23.
//

import Foundation
import SwiftUI

enum StitchDocument_V1: StitchSchemaVersionable {

    // MARK: - ensure versions are correct
    static let version = StitchSchemaVersion._V1
    typealias PreviousInstance = Self.StitchDocument
    typealias NodeEntitySchema = NodeEntity_V1
    // MARK: - end

    // TODO: transferable
    struct StitchDocument: StitchVersionedCodable {
        var projectId: ProjectId
        var name: String

        // Preview window
        let previewWindowSize: CGSize
        let previewSizeDevice: PreviewSize
        let previewWindowBackgroundColor: Color

        // Graph positioning data
        let localPosition: CGPoint
        let zoomData: CGFloat

        // Node data
        let nodes: [NodeEntitySchema.NodeEntity]
        let orderedSidebarLayers: [SidebarLayerType]
        let commentBoxesDict: CommentBoxesDict

        let cameraSettings: CameraSettings

        // MARK: remove `transferRepresentation` from older `StitchDocument` versions
//        static var transferRepresentation: some TransferRepresentation {
//            FileRepresentation(contentType: .stitchDocument,
//                               exporting: Self.exportDocument,
//                               importing: Self.importDocument)
//        }
    }
}

extension StitchDocument_V1.StitchDocument {
    init(previousInstance: StitchDocument_V1.PreviousInstance) {
        fatalError()
        //            self.projectId = previousInstance.projectId
        //            self.name = previousInstance.name
        //            self.previewWindowSizeWidth = previousInstance.previewWindowSizeWidth
        //            self.previewWindowSizeHeight = previousInstance.previewWindowSizeHeight
        //            self.nodes = NodeEntitySchema.NodeEntity_Codable.upgradeEntities(previousInstance.nodes)
    }
}
