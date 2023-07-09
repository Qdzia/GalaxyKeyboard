//
//  EnumEmojiSkinTone.swift
//  GalaxyKeyboard
//
//  Created by Łukasz Kudzia on 09/07/2023.
//

import FleksySDK

extension enumEmojiSkinTone: CaseIterable, Identifiable {
    public var id: UInt {
        self.rawValue
    }
    
    public static var allCases: [enumEmojiSkinTone] = [
        .emojiSkinTone_Dark,
        .emojiSkinTone_Light,
        .emojiSkinTone_Medium,
        .emojiSkinTone_Neutral,
        .emojiSkinTone_Medium_Dark,
        .emojiSkinTone_Medium_Light
    ]
    
    var emoji: String {
        switch self {
        case .emojiSkinTone_Dark: return "👍🏿"
        case .emojiSkinTone_Medium_Dark: return "👍🏾"
        case .emojiSkinTone_Medium: return "👍🏽"
        case .emojiSkinTone_Medium_Light: return "👍🏼"
        case .emojiSkinTone_Light: return "👍🏻"
        default: return "👍"
        }
    }
}
