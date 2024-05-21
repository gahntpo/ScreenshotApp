//
//  KeyboardcutSettingsView.swift
//  ScreenshotApp
//
//  Created by Karin Prater on 13/05/2024.
//

import SwiftUI
import KeyboardShortcuts

struct KeyboardShortcutSettingsView: View {
    var body: some View {
        Form {
            KeyboardShortcuts.Recorder("Screenshot Area:", 
                                       name: .screenshotCapture)
            KeyboardShortcuts.Recorder("Screenshot Window:", 
                                       name: .screenshotCaptureWindow)
            KeyboardShortcuts.Recorder("Screenshot Full Screen:", 
                                       name: .screenshotCaptureFull)
        }
        .padding()
    }
}

#Preview {
    KeyboardShortcutSettingsView()
}
