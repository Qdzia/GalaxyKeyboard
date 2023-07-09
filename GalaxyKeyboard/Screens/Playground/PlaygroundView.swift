//
//  PlaygroundView.swift
//  GalaxyKeyboard
//
//  Created by Łukasz Kudzia on 09/07/2023.
//

import SwiftUI

struct PlaygroundView: View {
    @State var sampleText = ""
    
    var body: some View {
        VStack(alignment: .leading, spacing: 24.0) {
            TextField("Type text", text: $sampleText)
                .foregroundColor(Color("TextFieldForeground"))
                .padding(8.0)
                .background(Color("TextFieldBackground"))
                .cornerRadius(8.0)
                        
            Spacer()
        }
        .padding(24.0)
        .navigationBarTitle("Keyboard Playground")
    }
}
