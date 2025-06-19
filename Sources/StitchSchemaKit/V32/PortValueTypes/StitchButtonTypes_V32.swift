//
//  StitchButtonTypes_V32.swift
//  
//
//  Created by Nicholas Arner on 1/1/24.
//

import Foundation
@preconcurrency import SwiftUI

public enum StitchButtonTypes_V32 { }

extension StitchButtonTypes_V32 {
    
    // MARK: - Button Style
    public enum StitchButtonStyle: String, CaseIterable, Codable, Hashable, Sendable {
        case automatic = "automatic"
        case bordered = "bordered"
        case borderedProminent = "borderedProminent"
        case borderless = "borderless"
        case plain = "plain"
        
        // Note: SwiftUI ButtonStyle conversion would be implemented in the rendering layer
        // For now, we just store the enum value for serialization
    }
    
    // MARK: - Button Role
    public enum StitchButtonRole: String, CaseIterable, Codable, Hashable, Sendable {
        case destructive = "destructive"
        case cancel = "cancel"
        
        public var toSwiftUIButtonRole: SwiftUI.ButtonRole? {
            switch self {
            case .destructive:
                return .destructive
            case .cancel:
                return .cancel
            }
        }
        
        public static func fromSwiftUIButtonRole(_ role: SwiftUI.ButtonRole?) -> Self? {
            guard let role = role else { return nil }
            switch role {
            case .destructive:
                return .destructive
            case .cancel:
                return .cancel
            default:
                return nil
            }
        }
    }
    
    // MARK: - Button Border Shape
    public enum StitchButtonBorderShape: String, CaseIterable, Codable, Hashable, Sendable {
        case automatic = "automatic"
        case capsule = "capsule"
        case circle = "circle"
        case roundedRectangle = "roundedRectangle"
        
        public var toSwiftUIButtonBorderShape: SwiftUI.ButtonBorderShape {
            switch self {
            case .automatic:
                return .automatic
            case .capsule:
                return .capsule
            case .circle:
                return .circle
            case .roundedRectangle:
                return .roundedRectangle(radius: 8.0)
            }
        }
        
        public static func fromSwiftUIButtonBorderShape(_ shape: SwiftUI.ButtonBorderShape) -> Self {
            // ButtonBorderShape comparison would need more sophisticated handling
            // For now, return a default value
            return .automatic
        }
    }
    
    // MARK: - Button Repeat Behavior
    public enum StitchButtonRepeatBehavior: String, CaseIterable, Codable, Hashable, Sendable {
        case automatic = "automatic"
        case enabled = "enabled"
        case disabled = "disabled"
        
        public var toSwiftUIButtonRepeatBehavior: SwiftUI.ButtonRepeatBehavior {
            switch self {
            case .automatic:
                return .automatic
            case .enabled:
                return .enabled
            case .disabled:
                return .disabled
            }
        }
        
        public static func fromSwiftUIButtonRepeatBehavior(_ behavior: SwiftUI.ButtonRepeatBehavior) -> Self {
            // ButtonRepeatBehavior comparison would need more sophisticated handling
            // For now, return a default value
            return .automatic
        }
    }
}
