//
//  ConfigView.swift
//  GalaxyKeyboard
//
//  Created by Łukasz Kudzia on 09/07/2023.
//

import SwiftUI
import FleksySDK

struct ConfigView: View {
    @StateObject var viewModel = ConfigViewModel()

    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 24.0) {
                sectionTitle("Select theme")
                themeConfig
                sectionTitle("Select emocji style")
                emocjiConfig
                Spacer()
                testKeyboardButton
            }
            .padding(24.0)
            .navigationBarTitle("Galaxy Keyboard")
        }

    }
    
    private var emocjiConfig: some View {
        HStack(spacing: 4.0) {
            ForEach(enumEmojiSkinTone.allCases) { skinTone in
                Button(skinTone.emoji) {
                    viewModel.selectedSkinTone = skinTone
                }
                .padding(12.0)
                .background(skinTone == viewModel.selectedSkinTone ? .blue : .gray)
                .cornerRadius(8.0)
            }
        }
    }
    
    private var themeConfig: some View {
        HStack(spacing: 4.0) {
            ForEach(KeyboardTheme.allCases) { theme in
                Button {
                    viewModel.selectedTheme = theme
                } label: {
                    cell(color: theme.configColor)
                        .overlay {
                            if theme == viewModel.selectedTheme {
                                Image(systemName: "checkmark")
                                    .foregroundColor(.white)
                            }
                        }
                }
            }
        }
    }
    
    private var testKeyboardButton: some View {
        NavigationLink {
            PlaygroundView()
        } label: {
            cell(color: .blue)
                .overlay {
                    Text("Test Keyboard")
                        .foregroundColor(.white)
                }
        }
    }
    
    private func cell(color: Color) -> some View {
        RoundedRectangle(cornerRadius: 8.0)
            .foregroundColor(color)
            .frame(height: 48.0)
    }
    
    private func sectionTitle(_ text: String) -> some View {
        Text(text)
            .font(.title3)
            .bold()
    }
}
