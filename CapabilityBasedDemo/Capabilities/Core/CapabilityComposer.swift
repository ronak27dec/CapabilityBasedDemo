//
//  CapabilityComposer.swift
//  CapabilityBasedDemo
//
//  Created by Ronak Malick on 21/01/26.
//

import Foundation

final class CapabilityComposer {
    private var capabilities: [AnyCapability] = []
    private let queue = DispatchQueue(
        label: "screen.capability.composer",
        attributes: .concurrent
    )

    func add(_ capability: AnyCapability) {
        queue.async(flags: .barrier) {
            self.capabilities.append(capability)
        }
    }

    func remove(_ id: CapabilityIdentifier) {
        queue.async(flags: .barrier) {
            self.capabilities.removeAll { $0.capabilityIdentifier == id }
        }
    }

    func snapshot() -> [AnyCapability] {
        queue.sync {
            capabilities
        }
    }
}
