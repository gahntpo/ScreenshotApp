//
//  MenubarSettingsView.swift
//  ScreenshotApp
//
//  Created by Karin Prater on 13/05/2024.
//

import SwiftUI

struct MenubarSettingsView: View {
    @AppStorage("menuBarExtraIsInserted") var menuBarExtraIsInserted = true
    
    var body: some View {
        Form {
            Toggle("show menu bar extra", isOn: $menuBarExtraIsInserted)
        }
    }
}

#Preview {
    MenubarSettingsView()
}
