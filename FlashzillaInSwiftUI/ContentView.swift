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
            Text("Double tapped")
                .onTapGesture(count: 2, perform: {
                    print("Double tapped")
                })
                
            Text("Long gesture")
                .onLongPressGesture {
                    print("Long gesture pressed!")
                }
        }
    }
}

#Preview {
    ContentView()
}
