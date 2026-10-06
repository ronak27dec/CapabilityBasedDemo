//
//  CapabilityFlattening.swift
//  CapabilityBasedDemo
//
//  Created by Ronak Malick on 21/01/26.
//

import Foundation

extension Array where Element == AnyCapability {
    
    func flattenedAndOrdered() -> [AnyCapability] {
        CapabilityOrdering.resolve(self).flatMap {
            [$0] + $0.children.flattenedAndOrdered()
        }
    }
}
