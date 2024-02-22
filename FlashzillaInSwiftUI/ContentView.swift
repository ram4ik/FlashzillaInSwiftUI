//
//  ContentView.swift
//  FlashzillaInSwiftUI
//
//  Created by test on 22.02.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Double tapped")
            .onTapGesture(count: 2, perform: {
                print("Double tapped")
            })
    }
}

#Preview {
    ContentView()
}
