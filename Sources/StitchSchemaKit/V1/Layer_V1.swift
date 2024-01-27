//
//  Layer_V1.swift
//
//
//  Created by Nicholas Arner on 1/27/24.
//

import Foundation

public enum Layer_V1: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V1
    public typealias PreviousInstance = Self.Layer
    // MARK: - endif
 

    public enum Layer: String, CaseIterable, Codable {
        case text,
             oval,
             rectangle,
             image,
             group,
             video,
             model3D,
             realityView,
             shape,
             colorFill,
             hitArea,
             canvasSketch = "Canvas Sketch",
             textField = "Text Field"
    }

}

extension Layer_V1.Layer: StitchVersionedCodable {
    public init(previousInstance: Layer_V1.PreviousInstance) {
        fatalError()
    }
}
