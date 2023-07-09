//
//  KeyboardViewController.swift
//  GalaxyKeyboardExt
//
//  Created by Łukasz Kudzia on 07/07/2023.
//

import FleksyKeyboardSDK
import UIKit
import Foundation

class KeyboardViewController: FleksyKeyboardSDK.FKKeyboardViewController {
    private let store = UserDefaultConfigStore()
    
    override func createConfiguration() -> KeyboardConfiguration {
        let style = getStyleConfiguration()
        let typing = TypingConfiguration()

        let licenseConfig = LicenseConfiguration(
            licenseKey: "<your-license-key>",
            licenseSecret: "<your-license-secret>"
        )
        
        let key =  KeyboardConfiguration(
            style: style,
            typing: typing,
            license: licenseConfig
        )
        key.emojiConfig = EmojiConfiguration(skinTone: store.emojiSkinTone)
        return key
    }
    
    func getStyleConfiguration() -> StyleConfiguration {
        switch store.theme {
        case .base: return StyleConfiguration()
        case .forestGreen: return StyleConfiguration(theme: forrestGreen, withDarkTheme: forrestGreen)
        case .oceanBlue: return StyleConfiguration(theme: oceanBlue, withDarkTheme: oceanBlue)
        }
    }
}
