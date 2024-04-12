//
//  DiceView.swift
//  DiceRoller
//
//  Created by Robinson Thairu on 12/04/2024.
//

import SwiftUI

struct DiceView: View {
    
    @State private var numberOfPips: Int = 1
    
    var body: some View {
        VStack {
            Image(systemName: "die.face.\(numberOfPips)")
                .resizable()
                .frame(
                    maxWidth: 100,
                    maxHeight: 100
            )
                .aspectRatio(1, contentMode: .fit)
                .padding(.bottom, 25)
            
            Button("Roll") {
                withAnimation{
                    numberOfPips = Int.random(in: 1...6)
                    }
                }
            .buttonStyle(.bordered)
            .shadow(radius: 7)
            .foregroundStyle(.black)
        }
    }
}

#Preview {
    DiceView()
}
