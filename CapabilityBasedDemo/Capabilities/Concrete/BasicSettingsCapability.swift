//
//  BasicSettingsCapability.swift
//  CapabilityBasedDemo
//
//  Created by Ronak Malick on 21/01/26.
//

import SwiftUI

struct BasicSettingsCapability: Capability {    
    let id = UUID()
    let capabilityIdentifier: CapabilityIdentifier = "basic_settings"
    let order: CapabilityOrder? = nil
    let children: [AnyCapability] = []

    func render() -> some View {
        Text("Basic Settings")
            .font(.headline)
    }
}
