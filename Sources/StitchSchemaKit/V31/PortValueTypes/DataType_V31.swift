//
//  File.swift
//  
//
//  Created by Elliot Boschwitz on 1/26/24.
//

import Foundation


public enum DataType_V31: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    public static let version: StitchSchemaVersion = StitchSchemaVersion._V31
//    public typealias PreviousInstance = DataType_V30.DataType
    // MARK: - endif
    
    public typealias ValueType = Equatable & StitchVersionedCodable & Hashable
 
    public enum DataType<Value: ValueType>: Hashable {
        case source(Value)
        case computed
    }
}

extension DataType_V31.DataType: StitchVersionedCodable where Value: DataType_V31.ValueType {
    public init(previousInstance:  DataType_V30.DataType<Value>) {
        switch previousInstance {
            
        case .source(let value):
            self = .source(value)
        case .computed:
            self = .computed
        }
    }
}
