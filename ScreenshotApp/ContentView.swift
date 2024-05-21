//
//  ContentView.swift
//  ScreenshotApp
//
//  Created by Karin Prater on 13/05/2024.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var vm: ScreencaptureViewModel
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 200, maximum: 300))]) {
                    ForEach(vm.images, id: \.self) { image in
                        Image(nsImage: image)
                            .resizable()
                            .scaledToFit()
                            .onDrag({ NSItemProvider(object: image) })
                          //  .draggable(image)
                    }
                }
            }
            
            HStack {
                Button("Make a area screenshot") {
                    vm.takeScreenshot(for: .area)
                }
                .keyboardShortcut(KeyEquivalent("a"), modifiers: .command)
                
                Button("Make a window screenshot") {
                    vm.takeScreenshot(for: .window)
                }
                
                Button("Make a full screenshot") {
                    vm.takeScreenshot(for: .full)
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView(vm: ScreencaptureViewModel())
}
