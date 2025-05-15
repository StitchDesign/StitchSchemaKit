//
//  CanvasItemId_V31.swift
//
//
//  Created by Elliot Boschwitz on 7/12/24.
//

import Foundation

public enum CanvasItemId_V31: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V31
    public typealias PreviousInstance = CanvasItemId_V30.CanvasItemId
    // MARK: - endif
 
    public enum CanvasItemId: Equatable, Hashable {
        case node(UUID)
        case layerInput(LayerInputCoordinate_V31.LayerInputCoordinate)
        case layerOutput(LayerOutputCoordinate_V31.LayerOutputCoordinate)
    }
}

extension CanvasItemId_V31.CanvasItemId: StitchVersionedCodable {
    public init(previousInstance: CanvasItemId_V31.PreviousInstance) {
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
