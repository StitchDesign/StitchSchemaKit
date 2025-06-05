//
//  UserVisibleType_V31.swift
//
//
//  Created by Nicholas Arner on 1/27/24.
//

import Foundation

public enum UserVisibleType_V31: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V31
    public typealias PreviousInstance = UserVisibleType_V30.UserVisibleType
    // MARK: - endif
 

    // not just the size of the box,
    // but from where the box goes to etc.
    public enum UserVisibleType: CaseIterable, Codable {
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
        case transform
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
        case strokeLineCap
        case strokeLineJoin
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
        case blendMode
        case mapType
        case progressIndicatorStyle
        case mobileHapticStyle
        case contentMode
        case spacing
        case padding
        case sizingScenario
        case pinToId
        case deviceAppearance
        case materialThickness
        case anchorEntity
    }
}

extension UserVisibleType_V31.UserVisibleType: StitchVersionedCodable {
    public init(previousInstance: UserVisibleType_V31.PreviousInstance) {
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
        case .transform:
            self = .transform
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
        case .strokeLineCap:
            self = .strokeLineCap
        case .strokeLineJoin:
            self = .strokeLineJoin
        case .contentMode:
            self = .contentMode
        case .spacing:
            self = .spacing
        case .sizingScenario:
            self = .sizingScenario
        case .padding:
            self = .padding
        case .pinToId:
            self = .pinToId
        case .deviceAppearance:
            self = .deviceAppearance
        case .materialThickness:
            self = .materialThickness
        case .anchorEntity:
            self = .anchorEntity
        }
    }
}

extension UserVisibleType_V31.UserVisibleType {
    public init?(llmString: String) {
        guard let match = Self.allCases.first(where: {
            $0.asLLMStepNodeType == llmString //Self.toCamelCase(llmString)
        }) else {
            return nil
        }
        
        self = match
    }
    
    // TODO: our OpenAI schema does not define all possible node-types, and those node types that we do define use camelCase
    // TODO: some node types use human-readable strings ("Sizing Scenario"), not camelCase ("sizingScenario") as their raw value; so can't use `NodeType(rawValue:)` constructor
    public var asLLMStepNodeType: String {
        Self.toCamelCase(self.display)
    }
    
    public var display: String {
        switch self {
        case .int:
            return "Int"
        case .string:
            return "String"
        case .bool:
            return "Bool"
        case .color:
            return "Color"
        case .number:
            return "Number"
        case .layerDimension:
            return "Layer Dimension"
        case .size:
            return "Size"
        case .position:
            return "Position"
        case .point3D:
            return "3D Point"
        case .point4D:
            return "4D Point"
        case .transform:
            return "Transform"
        case .plane:
            return "Plane"
        case .pulse:
            return "Pulse"
        case .media:
            return "Media"
        case .json:
            return "JSON"
        case .networkRequestType:
            return "Network Request Type"
        case .none:
            return "None"
        case .anchoring:
            return "Anchor"
        case .cameraDirection:
            return "Camera Direction"
        case .interactionId:
            return "Layer"
        case .scrollMode:
            return "Scroll Mode"
        case .textAlignment:
            return "Text Horizontal Alignment"
        case .textVerticalAlignment:
            return "Text Vertical Alignment"
        case .fitStyle:
            return "Fit"
        case .animationCurve:
            return "Animation Curve"
        case .lightType:
            return "Light Type"
        case .layerStroke:
            return "Layer Stroke"
        case .textTransform:
            return "Text Transform"
        case .dateAndTimeFormat:
            return "Date and Time Format"
        case .shape:
            return "Shape"
        case .scrollJumpStyle:
            return "Scroll Jump Style"
        case .scrollDecelerationRate:
            return "Scroll Deceleration Rate"
        case .delayStyle:
            return "Delay Style"
        case .shapeCoordinates:
            return "Shape Coordinates"
        case .shapeCommand:
            return "Shape Command"
        case .shapeCommandType:
            return "Shape Command Type"
        case .orientation:
            return "Orientation"
        case .cameraOrientation:
            return "Camera Orientation"
        case .deviceOrientation:
            return "Device Orientation"
        case .vnImageCropOption:
            return "Image Crop & Scale"
        case .textDecoration:
            return "Text Decoration"
        case .textFont:
            return "Text Font"
        case .blendMode:
            return "Blend Mode"
        case .mapType:
            return "Map Type"
        case .progressIndicatorStyle:
            return "Progress Style"
        case .mobileHapticStyle:
            return "Haptic Style"
        case .strokeLineCap:
            return "Stroke Line Cap"
        case .strokeLineJoin:
            return "Stroke Line Join"
        case .contentMode:
            return "Content Mode"
        case .spacing:
            return "Spacing"
        case .padding:
            return "Padding"
        case .sizingScenario:
            return "Sizing Scenario"
        case .pinToId:
            return "Pin To ID"
        case .materialThickness:
            return "Materialize Thickness"
        case .deviceAppearance:
            return "Device Appearance"
        case .anchorEntity:
            return "Anchor Entity"
        }
    }
    
    private static func toCamelCase(_ sentence: String) -> String {
        let words = sentence.components(separatedBy: " ")
        let camelCaseString = words.enumerated().map { index, word in
            index == 0 ? word.lowercased() : word.capitalized
        }.joined()
        return camelCaseString
    }
}
