//
//  AnyCapability.swift
//  CapabilityBasedDemo
//
//  Created by Ronak Malick on 21/01/26.
//

import SwiftUI

struct AnyCapability: Identifiable, Hashable {
    let id: AnyHashable
    let capabilityIdentifier: CapabilityIdentifier
    let order: CapabilityOrder?
    
    private let _children: () -> [AnyCapability]
    private let _render: () -> AnyView
    
    var children: [AnyCapability] {
        self._children()
    }
    
    init<C: Capability>(_ capability: C) {
        self.id = capability.id
        self.capabilityIdentifier = capability.capabilityIdentifier
        self.order = capability.order
        self._children = { capability.children }
        self._render = { AnyView(capability.render()) }
    }
    
    func render() -> some View {
        _render()
    }
    
    static func == (lhs: AnyCapability, rhs: AnyCapability) -> Bool {
        lhs.capabilityIdentifier == rhs.capabilityIdentifier
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(capabilityIdentifier)
    }
}
