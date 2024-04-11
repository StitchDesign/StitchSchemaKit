//
//  StitchJSON_V6.swift
//  
//
//  Created by Nicholas Arner on 1/26/24.
//

import Foundation
import SwiftyJSON

public enum StitchJSON_V6: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V6
    public typealias PreviousInstance = StitchJSON_V5.StitchJSON
    // MARK: - endif
 
    public struct StitchJSON: Equatable, Hashable {
        public static func == (lhs: StitchJSON, rhs: StitchJSON) -> Bool {
            lhs.id == rhs.id
        }
        
        public var id: UUID
        public var value: JSON {
            didSet {
                self.id = .init()
            }
        }
        
        public init(id: UUID, value: JSON) {
            self.id = id
            self.value = value
        }
        
        
        public init(_ value: JSON) {
            self.id = .init()
            self.value = value
        }
    }


}

extension StitchJSON_V6.StitchJSON: StitchVersionedCodable {
    public init(previousInstance: StitchJSON_V6.PreviousInstance) {
        self.init(id: previousInstance.id, value: previousInstance.value)
    }
}
