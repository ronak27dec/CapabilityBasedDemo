//
//  Capability.swift
//  CapabilityBasedDemo
//
//  Created by Ronak Malick on 21/01/26.
//

import SwiftUI

protocol Capability: Identifiable, Hashable {
    associatedtype Body: View
    
    var capabilityIdentifier: CapabilityIdentifier { get }
    var order: CapabilityOrder? { get }
    var children: [AnyCapability] { get }
    
    @ViewBuilder
    func render() -> Body
}
