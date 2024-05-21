//
//  ScreenshotAppApp.swift
//  ScreenshotApp
//
//  Created by Karin Prater on 13/05/2024.
//

import SwiftUI

@main
struct ScreenshotAppApp: App {
    
    @StateObject var vm = ScreencaptureViewModel()
    @AppStorage("menuBarExtraIsInserted") var menuBarExtraIsInserted = true
    
    var body: some Scene {
        MenuBarExtra("Screenshots", 
                     systemImage: "photo.badge.plus",
                     isInserted: $menuBarExtraIsInserted) {
            MenubarContentView(vm: vm)
        }
        .menuBarExtraStyle(.window)
        
        Settings {
            SettingsView()
        }
        
        
    }
}
