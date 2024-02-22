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
                .onLongPressGesture(minimumDuration: 2) {
                    print("Long gesture pressed!")
                } onPressingChanged: { inProgress in
                    print("In progress: \(inProgress)")
                }
        }
    }
}

#Preview {
    ContentView()
}
