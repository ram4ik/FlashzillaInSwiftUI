//
//  ContentView.swift
//  FlashzillaInSwiftUI
//
//  Created by test on 22.02.2024.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.accessibilityDifferentiateWithoutColor) var accessibilityDifferentiateWithoutColor
    @Environment(\.accessibilityReduceMotion) var accessibilityReduceMotion
    @Environment(\.accessibilityReduceTransparency) var accessibilityReduceTransparency
    
    @State private var scale = 1.0
    
    var body: some View {
        VStack {
            HStack {
                if accessibilityDifferentiateWithoutColor {
                    Image(systemName: "checkmark.circle")
                }
                
                Text("Success")
                
            }
            .padding()
            .background(accessibilityDifferentiateWithoutColor ? .black: .green)
            .clipShape(.capsule)
            
            Button("Hello, world!") {
                if accessibilityReduceMotion {
                    scale *= 1.5
                } else {
                    withAnimation {
                        scale *= 1.5
                    }
                }
            }
            .scaleEffect(scale)
            
            Text("Hello")
                .padding()
                .background(accessibilityReduceTransparency ? .black : .black.opacity(0.5))
                .foregroundStyle(.white)
                .clipShape(.capsule)
        }
    }
    
}

#Preview {
    ContentView()
}
