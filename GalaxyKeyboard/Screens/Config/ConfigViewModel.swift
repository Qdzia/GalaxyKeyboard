//
//  ConfigViewModel.swift
//  GalaxyKeyboard
//
//  Created by Łukasz Kudzia on 09/07/2023.
//

import FleksySDK

@MainActor class ConfigViewModel: ObservableObject {
    @Published var selectedSkinTone: enumEmojiSkinTone = .emojiSkinTone_Neutral
    @Published var selectedTheme: KeyboardTheme = .base
}
