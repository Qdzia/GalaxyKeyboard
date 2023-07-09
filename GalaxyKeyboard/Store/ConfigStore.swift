//
//  ConfigStore.swift
//  GalaxyKeyboard
//
//  Created by Łukasz Kudzia on 09/07/2023.
//

import FleksySDK

protocol ConfigStore {
    var emojiSkinTone: EmojiSkinTone { get set }
    var theme: KeyboardTheme { get set }
}

class UserDefaultConfigStore: ConfigStore {
    private let container = UserDefaults(suiteName: "group.galaxy")!

    var emojiSkinTone: EmojiSkinTone {
        get {
            let value = container.object(forKey: "config.emoji_skin_tone") as? UInt ?? .zero
            return EmojiSkinTone(rawValue: value) ?? .emojiSkinTone_Neutral
        }
        set {
            container.set(newValue.rawValue, forKey: "config.emoji_skin_tone")
        }
    }
    
    var theme: KeyboardTheme {
        get {
            let value = container.object(forKey: "config.theme") as? String ?? ""
            return KeyboardTheme(rawValue: value) ?? .base
        }
        set {
            container.set(newValue.rawValue, forKey: "config.theme")
        }
    }
}
