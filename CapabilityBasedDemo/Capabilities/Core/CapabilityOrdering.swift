//
//  CapabilityOrdering.swift
//  CapabilityBasedDemo
//
//  Created by Ronak Malick on 21/01/26.
//

import SwiftUI

enum CapabilityOrdering {
    
    static func resolve(
        _ capabilities: [AnyCapability]
    ) -> [AnyCapability] {
        
        var ordered = capabilities
        
        let indexMap = Dictionary(
            uniqueKeysWithValues: ordered.enumerated().map {
                ($1.capabilityIdentifier, $0)
            }
        )
        
        for (index, capability) in ordered.enumerated() {
            guard let order = capability.order else { continue }
            
            switch order {
                case .before(let target):
                    if let targetIndex = indexMap[target], targetIndex > index {
                        ordered.move(
                            fromOffsets: IndexSet(integer: index),
                            toOffset: targetIndex
                        )
                    }
                    
                case .after(let target):
                    if let targetIndex = indexMap[target],
                       targetIndex + 1 < ordered.count {
                        ordered.move(
                            fromOffsets: IndexSet(integer: index),
                            toOffset: targetIndex + 1
                        )
                    }
            }
        }
        
        return ordered
    }
}
