//
//  Keyboardshortcuts+Global.swift
//  ScreenshotApp
//
//  Created by Karin Prater on 13/05/2024.
//

import Foundation
import KeyboardShortcuts

extension KeyboardShortcuts.Name {

    static let screenshotCapture = Self("screenshotCapture",
                                        default: .init(.three, modifiers: [.option, .command]))
    static let screenshotCaptureWindow = Self("screenshotCaptureWindow",
                                        default: .init(.four, modifiers: [.option, .command]))
    static let screenshotCaptureFull = Self("screenshotCaptureFull",
                                        default: .init(.five, modifiers: [.option, .command]))
}
