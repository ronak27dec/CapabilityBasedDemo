//
//  CapabilityContainerView.swift
//  CapabilityBasedDemo
//
//  Created by Ronak Malick on 21/01/26.
//

import SwiftUI

struct CapabilityContainerView: View {

    let capabilities: [AnyCapability]

    var body: some View {
        ForEach(capabilities.flattenedAndOrdered()) { capability in
            capability.render()
        }
    }
}

