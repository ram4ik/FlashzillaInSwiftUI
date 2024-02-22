//
//  ContentView.swift
//  FlashzillaInSwiftUI
//
//  Created by test on 22.02.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentAmount = 0.0
    @State private var finalAmount = 1.0
    
    var body: some View {
        VStack {
            Text("Double tapped")
                .onTapGesture(count: 2, perform: {
                    print("Double tapped")
                })
                .padding()
                
            Text("Long gesture")
                .onLongPressGesture(minimumDuration: 2) {
                    print("Long gesture pressed!")
                } onPressingChanged: { inProgress in
                    print("In progress: \(inProgress)")
                }
                .padding()
            
            Text("Gesture")
                .scaleEffect(finalAmount + currentAmount)
                .gesture (
                    MagnifyGesture()
                        .onChanged { value in
                            currentAmount = value.magnification - 1
                        }
                        .onEnded { value in
                            finalAmount += currentAmount
                            currentAmount = 0
                        }
                )
                .padding()
        }
    }
}

#Preview {
    ContentView()
}
