//
//  CapabilityOrder.swift
//  CapabilityBasedDemo
//
//  Created by Ronak Malick on 21/01/26.
//

import Foundation

enum CapabilityOrder: Hashable {
    case before(CapabilityIdentifier)
    case after(CapabilityIdentifier)
}
