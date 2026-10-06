//
//  CapabilityIdentifier.swift
//  CapabilityBasedDemo
//
//  Created by Ronak Malick on 21/01/26.
//

import Foundation

struct CapabilityIdentifier: Hashable, ExpressibleByStringLiteral {
    let rawValue: String
    
    init(_ rawValue: String) {
        self.rawValue = rawValue
    }
    
    init(stringLiteral value: StringLiteralType) {
        self.rawValue = value
    }
}
