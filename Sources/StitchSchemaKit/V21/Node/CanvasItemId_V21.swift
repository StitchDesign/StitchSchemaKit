//
//  CanvasItemId_V21.swift
//
//
//  Created by Elliot Boschwitz on 7/12/24.
//

import Foundation

public enum CanvasItemId_V21: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V21
    public typealias PreviousInstance = Self.CanvasItemId
    // MARK: - endif

    public enum CanvasItemId: Equatable, Hashable {
        case node(UUID)
        case layerInput(LayerInputCoordinate_V21.LayerInputCoordinate)
        case layerOutput(LayerOutputCoordinate_V21.LayerOutputCoordinate)
    }
}

extension CanvasItemId_V21.CanvasItemId: StitchVersionedCodable {
    public init(previousInstance: CanvasItemId_V21.PreviousInstance) {
        fatalError() // Added in version 21
    }
}
