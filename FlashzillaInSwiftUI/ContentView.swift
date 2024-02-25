//
//  ContentView.swift
//  FlashzillaInSwiftUI
//
//  Created by test on 22.02.2024.
//

import SwiftUI

extension View {
    func stacked(at position: Int, in total: Int) -> some View {
        let offset = Double(total - position)
        return self.offset(y: offset * 10)
    }
}

struct ContentView: View {
    @Environment(\.accessibilityDifferentiateWithoutColor) var accessibilityDifferentiateWithoutColor
    @State private var cards = Array<Card>(repeating: .example, count: 10)
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.gray.opacity(0.6), .white, .gray.opacity(0.7)], startPoint: .bottomLeading, endPoint: .topTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                ZStack {
                    ForEach(0..<cards.count, id: \.self) { index in
                        CardView(card: cards[index]) {
                            withAnimation {
                                removeCard(at: index)
                            }
                        }
                        .stacked(at: index, in: cards.count)
                    }
                }
            }
            
            if accessibilityDifferentiateWithoutColor {
                VStack {
                    Spacer()
                    
                    HStack {
                        Image(systemName: "xmark.circle")
                            .padding()
                            .background(.black.opacity(0.7))
                            .clipShape(.circle)
                        
                        Spacer()
                        
                        Image(systemName: "checkmark.circle")
                            .padding()
                            .background(.black.opacity(0.7))
                            .clipShape(.circle)
                    }
                    .foregroundStyle(.white)
                    .font(.largeTitle)
                    .padding()
                }
            }
        }
    }
    
    func removeCard(at index: Int) {
        cards.remove(at: index)
    }
}

#Preview {
    ContentView()
}
