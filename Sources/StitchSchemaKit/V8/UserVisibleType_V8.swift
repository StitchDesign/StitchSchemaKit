//
//  UserVisibleType_V8.swift
//
//
//  Created by Nicholas Arner on 1/27/24.
//

import Foundation

public enum UserVisibleType_V8: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V8
    public typealias PreviousInstance = UserVisibleType_V7.UserVisibleType
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
        case textDecoration
        case textFont
        case blendMode = "Blend Mode"
        case mapType
        case progressIndicatorStyle
        case mobileHapticStyle
    }
}

extension UserVisibleType_V8.UserVisibleType: StitchVersionedCodable {
    public init(previousInstance: UserVisibleType_V8.PreviousInstance) {
        switch previousInstance {
        case .string:
            self = .string
        case .bool:
            self = .bool
        case .int:
            self = .int
        case .color:
            self = .color
        case .number:
            self = .number
        case .layerDimension:
            self = .layerDimension
        case .size:
            self = .size
        case .position:
            self = .position
        case .point3D:
            self = .point3D
        case .point4D:
            self = .point4D
        case .matrixTransform:
            self = .matrixTransform
        case .plane:
            self = .plane
        case .pulse:
            self = .pulse
        case .media:
            self = .media
        case .json:
            self = .json
        case .networkRequestType:
            self = .networkRequestType
        case .none:
            self = .none
        case .anchoring:
            self = .anchoring
        case .cameraDirection:
            self = .cameraDirection
        case .interactionId:
            self = .interactionId
        case .scrollMode:
            self = .scrollMode
        case .textAlignment:
            self = .textAlignment
        case .textVerticalAlignment:
            self = .textVerticalAlignment
        case .fitStyle:
            self = .fitStyle
        case .animationCurve:
            self = .animationCurve
        case .lightType:
            self = .lightType
        case .layerStroke:
            self = .layerStroke
        case .textTransform:
            self = .textTransform
        case .dateAndTimeFormat:
            self = .dateAndTimeFormat
        case .shape:
            self = .shape
        case .scrollJumpStyle:
            self = .scrollJumpStyle
        case .scrollDecelerationRate:
            self = .scrollDecelerationRate
        case .delayStyle:
            self = .delayStyle
        case .shapeCoordinates:
            self = .shapeCoordinates
        case .shapeCommand:
            self = .shapeCommand
        case .shapeCommandType:
            self = .shapeCommandType
        case .orientation:
            self = .orientation
        case .cameraOrientation:
            self = .cameraOrientation
        case .deviceOrientation:
            self = .deviceOrientation
        case .vnImageCropOption:
            self = .vnImageCropOption
        case .textDecoration:
            self = .textDecoration
        case .textFont:
            self = .textFont
        case .blendMode:
            self = .blendMode
        case .mapType:
            self = .mapType
        case .progressIndicatorStyle:
            self = .progressIndicatorStyle
        case .mobileHapticStyle:
            self = .mobileHapticStyle
        }
    }
}
