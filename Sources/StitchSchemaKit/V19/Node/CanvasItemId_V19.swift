//
//  CanvasItemId_V19.swift
//
//
//  Created by Elliot Boschwitz on 7/12/24.
//

import Foundation

public enum CanvasItemId_V19: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V19
    public typealias PreviousInstance = Self.CanvasItemId
    public typealias LayerInputCoordinate = LayerInputCoordinate_V19.LayerInputCoordinate
    public typealias LayerOutputCoordinate = LayerOutputCoordinate_V19.LayerOutputCoordinate
    // MARK: - endif
 

    public enum CanvasItemId: Equatable, Hashable {
        case node(UUID)
        case layerInput(LayerInputCoordinate)
        case layerOutput(LayerOutputCoordinate)
    }
}

extension CanvasItemId_V19.CanvasItemId: StitchVersionedCodable {
    public init(previousInstance: CanvasItemId_V19.PreviousInstance) {
        fatalError()
    }
}
