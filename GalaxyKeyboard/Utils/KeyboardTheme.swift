//
//  KeyboardTheme.swift
//  GalaxyKeyboard
//
//  Created by Łukasz Kudzia on 09/07/2023.
//

import SwiftUI

enum KeyboardTheme: String {
    case base
    case oceanBlue
    case forestGreen
    
    var configColor: Color {
        switch self {
        case .base: return .gray
        case .oceanBlue: return .blue
        case .forestGreen: return .green
        }
    }
}

extension KeyboardTheme: Identifiable, CaseIterable {
    var id: String {
        self.rawValue
    }
}
