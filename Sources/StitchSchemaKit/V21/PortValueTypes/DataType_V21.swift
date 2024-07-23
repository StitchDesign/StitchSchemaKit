//
//  File.swift
//  
//
//  Created by Elliot Boschwitz on 1/26/24.
//

import Foundation


public enum DataType_V21: StitchSchemaVersionable {
    // MARK: - ensure versions are correct
    static var version: StitchSchemaVersion = StitchSchemaVersion._V21
//    public typealias PreviousInstance = DataType_V20.DataType
    // MARK: - endif
    
    public typealias ValueType = Equatable & StitchVersionedCodable & Hashable
 
    public enum DataType<Value: ValueType>: Hashable {
        case source(Value)
        case computed
    }
}

extension DataType_V21.DataType: StitchVersionedCodable where Value: DataType_V21.ValueType {
    public init(previousInstance:  DataType_V20.DataType<Value>) {
        switch previousInstance {
            
        case .source(let value):
            self = .source(value)
        case .computed:
            self = .computed
        }
    }
}
