//
//  SettingsView.swift
//  ScreenshotApp
//
//  Created by Karin Prater on 13/05/2024.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        TabView {
            KeyboardShortcutSettingsView()
                .tabItem { Label("Keyboard", systemImage: "keyboard") }
            
            MenubarSettingsView()
                .tabItem { Label("MenuBarExtra", systemImage: "rectangle.topthird.inset.filled") }
        }
        .frame(minWidth: 400, minHeight: 300)
    }
}

#Preview {
    SettingsView()
}
