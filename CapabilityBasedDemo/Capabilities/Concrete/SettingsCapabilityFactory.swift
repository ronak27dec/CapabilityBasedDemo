//
//  SettingsCapabilityFactory.swift
//  CapabilityBasedDemo
//
//  Created by Ronak Malick on 21/01/26.
//

import Foundation

enum SettingsCapabilityFactory {

    static func assemble(
        isPremiumUser: Bool
    ) -> CapabilityComposer {

        let composer = CapabilityComposer()

        composer.add(
            AnyCapability(BasicSettingsCapability())
        )

        if isPremiumUser {
            composer.add(
                AnyCapability(AdvancedSettingsCapability())
            )
        }

        return composer
    }
}
