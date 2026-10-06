//
//  AdvancedSettingsCapability.swift
//  CapabilityBasedDemo
//
//  Created by Ronak Malick on 21/01/26.
//

import SwiftUI

struct AdvancedSettingsCapability: Capability {    
    let id = UUID()
    let capabilityIdentifier: CapabilityIdentifier = "advanced_settings"
    let order: CapabilityOrder? = .after("basic_settings")
    let children: [AnyCapability] = []

    func render() -> some View {
        Text("Advanced Settings")
            .foregroundColor(.red)
    }
}
