//
//  KeyboardViewController.swift
//  GalaxyKeyboardExt
//
//  Created by Łukasz Kudzia on 09/07/2023.
//

import FleksyKeyboardSDK

class KeyboardViewController: FleksyKeyboardSDK.FKKeyboardViewController {

    override func createConfiguration() -> KeyboardConfiguration {
        let style = StyleConfiguration()

        let typing = TypingConfiguration()

        let licenseConfig = LicenseConfiguration(
            licenseKey: "<your-license-key>",
            licenseSecret: "<your-license-secret>"
        )

        return KeyboardConfiguration(
            style: style,
            typing: typing,
            specialKeys: nil,
            license: licenseConfig
        )
    }
}
