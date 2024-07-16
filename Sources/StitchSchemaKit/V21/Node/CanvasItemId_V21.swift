//
//  CanvasItemId_V21.swift
//
//
//  Created by Elliot Boschwitz on 7/12/24.
//

import Foundation

public enum CanvasItemId_V21: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V21
    public typealias PreviousInstance = Self.CanvasItemId
    public typealias LayerInputCoordinate = LayerInputCoordinate_V21.LayerInputCoordinate
    public typealias LayerOutputCoordinate = LayerOutputCoordinate_V21.LayerOutputCoordinate
    // MARK: - endif
 

    public enum CanvasItemId: Equatable, Hashable {
        case node(UUID)
        case layerInput(LayerInputCoordinate)
        case layerOutput(LayerOutputCoordinate)
    }
}

extension CanvasItemId_V21.CanvasItemId: StitchVersionedCodable {
    public init(previousInstance: CanvasItemId_V21.PreviousInstance) {
        fatalError()
    }
}
