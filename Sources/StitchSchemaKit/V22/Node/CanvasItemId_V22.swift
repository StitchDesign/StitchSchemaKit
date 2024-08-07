//
//  CanvasItemId_V22.swift
//
//
//  Created by Elliot Boschwitz on 7/12/24.
//

import Foundation

public enum CanvasItemId_V22: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V22
    public typealias PreviousInstance = Self.CanvasItemId
    public typealias LayerInputCoordinate = LayerInputCoordinate_V22.LayerInputCoordinate
    public typealias LayerOutputCoordinate = LayerOutputCoordinate_V22.LayerOutputCoordinate
    // MARK: - endif
 

    public enum CanvasItemId: Equatable, Hashable {
        case node(UUID)
        case layerInput(LayerInputCoordinate)
        case layerOutput(LayerOutputCoordinate)
    }
}

extension CanvasItemId_V22.CanvasItemId: StitchVersionedCodable {
    public init(previousInstance: CanvasItemId_V22.PreviousInstance) {
        fatalError()
    }
}