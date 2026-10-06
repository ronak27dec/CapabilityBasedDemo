//
//  CapabilityStore.swift
//  CapabilityBasedDemo
//
//  Created by Ronak Malick on 21/01/26.
//

import Foundation

final class CapabilityStore {
    
    static let shared = CapabilityStore()
    
    private var composers: [String: CapabilityComposer] = [:]
    private let queue = DispatchQueue(
        label: "app.capability.store",
        attributes: .concurrent
    )
    
    func composer(for screen: String) -> CapabilityComposer {
        queue.sync {
            if let composer = composers[screen] {
                return composer
            }
            
            let composer = CapabilityComposer()
            composers[screen] = composer
            return composer
        }
    }
}
