//
//  SettingsView.swift
//  CapabilityBasedDemo
//
//  Created by Ronak Malick on 21/01/26.
//

import SwiftUI

struct SettingsView: View {
    @State private var capabilities: [AnyCapability] = []
    let composer = SettingsCapabilityFactory.assemble(isPremiumUser: false)
    
    var body: some View {
        CapabilityContainerView(capabilities: capabilities)
            .onAppear {
                capabilities = composer.snapshot()
            }
    }
}
