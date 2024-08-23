//
//  CanvasItemId_V23.swift
//
//
//  Created by Elliot Boschwitz on 7/12/24.
//

import Foundation

public enum CanvasItemId_V23: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V23
    public typealias PreviousInstance = CanvasItemId_V22.CanvasItemId
    // MARK: - endif
 

    public enum CanvasItemId: Equatable, Hashable {
        case node(UUID)
        case layerInput(LayerInputCoordinate_V23.LayerInputCoordinate)
        case layerOutput(LayerOutputCoordinate_V23.LayerOutputCoordinate)
    }
}

extension CanvasItemId_V23.CanvasItemId: StitchVersionedCodable {
    public init(previousInstance: CanvasItemId_V23.PreviousInstance) {
        switch previousInstance {
        case .node(let x):
            self = .node(x)
        case .layerInput(let x):
            self = .layerInput(.init(previousInstance: x))
        case .layerOutput(let x):
            self = .layerOutput(.init(previousInstance: x))
        }
    }
}
