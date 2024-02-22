//
//  ContentView.swift
//  FlashzillaInSwiftUI
//
//  Created by test on 22.02.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentAmount = Angle.zero
    @State private var finalAmount = Angle.zero
    
    var body: some View {
        VStack {
            
            Text("Gesture")
                .rotationEffect(currentAmount + finalAmount)
                .gesture (
                    RotateGesture()
                        .onChanged({ value in
                            currentAmount = value.rotation
                        })
                        .onEnded({ value in
                            finalAmount += currentAmount
                            currentAmount = .zero
                        })
                )
                .padding()
        }
    }
}

#Preview {
    ContentView()
}
