//
//  UserVisibleType_V1.swift
//
//
//  Created by Nicholas Arner on 1/27/24.
//

import Foundation

public enum UserVisibleType_V1: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V1
    public typealias PreviousInstance = Self.UserVisibleType
    // MARK: - endif
 

    // not just the size of the box,
    // but from where the box goes to etc.
    public enum UserVisibleType: String, CaseIterable, Codable {
        case string
        case bool
        case int
        case color
        case number
        case layerDimension
        case size
        case position
        case point3D
        case point4D
        case matrixTransform
        case plane
        case pulse
        case media
        case json
        case networkRequestType
        case none
        case anchoring
        case cameraDirection
        case interactionId
        case scrollMode
        case textAlignment
        case textVerticalAlignment
        case fitStyle
        case animationCurve
        case lightType
        case layerStroke
        case textTransform
        case dateAndTimeFormat
        case shape
        case scrollJumpStyle
        case scrollDecelerationRate
        case delayStyle
        case shapeCoordinates
        case shapeCommand
        case shapeCommandType
        case orientation
        case cameraOrientation
        case deviceOrientation
        case vnImageCropOption
    }


}

extension UserVisibleType_V1.UserVisibleType: StitchVersionedCodable {
    public init(previousInstance: ExpansionDirection_V1.PreviousInstance) {
        fatalError()
    }
}
