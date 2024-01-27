//
//  ExpansionDirection_V1.swift
//  
//
//  Created by Nicholas Arner on 1/27/24.
//

import Foundation


// not just the size of the box,
// but from where the box goes to etc.
public enum ExpansionDirection: Codable, Equatable, Hashable {
    case topLeft, topRight,
         bottomLeft, bottomRight,
         none
}
