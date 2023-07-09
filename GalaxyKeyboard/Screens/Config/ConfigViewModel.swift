//
//  ConfigViewModel.swift
//  GalaxyKeyboard
//
//  Created by Łukasz Kudzia on 09/07/2023.
//

import FleksySDK

@MainActor class ConfigViewModel: ObservableObject {
    @Published var selectedSkinTone: EmojiSkinTone {
        didSet { configStore.emojiSkinTone = selectedSkinTone }
    }
    
    @Published var selectedTheme: KeyboardTheme {
        didSet { configStore.theme = selectedTheme }
    }
    
    private var configStore: ConfigStore
    
    init() {
        let store = UserDefaultConfigStore()
        selectedSkinTone = store.emojiSkinTone
        selectedTheme = store.theme
        configStore = store
    }
}
