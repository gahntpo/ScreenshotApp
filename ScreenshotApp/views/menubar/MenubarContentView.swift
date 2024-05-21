//
//  MenubarContentView.swift
//  ScreenshotApp
//
//  Created by Karin Prater on 13/05/2024.
//

import SwiftUI

struct MenubarContentView: View {
    
    @ObservedObject var vm: ScreencaptureViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text("Your Screenshots")
                    .font(.title2)
                
                if !vm.images.isEmpty {
                    Button("Clear All") {
                        vm.images = []
                    }
                    .frame(maxWidth: .infinity, alignment: .trailing)
                }
            }
            .padding(.bottom, 10)
            
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 75, maximum: 150))]) {
                    ForEach(vm.images.reversed(), id: \.self) { image in
                        Image(nsImage: image)
                            .resizable()
                            .scaledToFit()
                            .shadow(radius: 5)
                            .onDrag({ NSItemProvider(object: image) })
                          //  .draggable(image)
                    }
                }
            }
            .frame(minHeight: 50, maxHeight: 200)
            
            Divider()
                .padding(.horizontal, -15)
            
            HStack {
                Button(action: {
                    vm.takeScreenshot(for: .area)
                }, label: {
                    Label("Area", systemImage: "rectangle.center.inset.filled.badge.plus")
                })
                .keyboardShortcut(.defaultAction)
                
                Button(action: {
                    vm.takeScreenshot(for: .window)
                }, label: {
                    Label("Window", systemImage: "macwindow")
                })
                
                Button(action: {
                    vm.takeScreenshot(for: .full)
                }, label: {
                    Label("Full Screen", systemImage: "macbook.gen2")
                })
                
                SettingsLink()
                    .labelStyle(.iconOnly)
            }
            .frame(maxWidth: .infinity)
            
        }
        .frame(minWidth: 350)
        .padding()
    }
}

#Preview {
    MenubarContentView(vm: ScreencaptureViewModel())
}
