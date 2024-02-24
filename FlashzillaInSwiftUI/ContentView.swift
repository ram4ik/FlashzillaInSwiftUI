//
//  ContentView.swift
//  FlashzillaInSwiftUI
//
//  Created by test on 22.02.2024.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack {
            Text("Hello")
            
            Spacer()
            
            Text("World")
        }
        .contentShape(.rect)
        .onTapGesture {
            print("VStack tapped!")
        }
    }
}

#Preview {
    ContentView()
}
