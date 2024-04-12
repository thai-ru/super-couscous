//
//  ContentView.swift
//  DiceRoller
//
//  Created by Robinson Thairu on 12/04/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State private var numberOfDice: Int = 4
    
    var body: some View {
        VStack {
            Text("Dice Roller")
                .font(.largeTitle.lowercaseSmallCaps())
                .fontWidth(.expanded)
                .fontDesign(.serif)
                .foregroundStyle(.indigo)
                .fontWeight(.bold)
                .padding(.bottom, 60)
            
            HStack {
                ForEach(1...numberOfDice, id: \.self) {
                    _ in DiceView()
                }
                .padding()
            }
            
            HStack {
                
                Spacer()
                
                    Button("Add Dice", systemImage: "plus.circle.fill"){
                        numberOfDice += 1
                    }
                    .buttonStyle(.bordered)
                    .padding()
                    .disabled(numberOfDice == 4)
                
                Spacer()
                
                HStack {
                    Button("Remove Dice", systemImage: "minus.circle.fill"){
                        numberOfDice -= 1
                    }
                    .buttonStyle(.bordered)
                    .disabled(numberOfDice == 1)
                }
                Spacer()
            }
            .labelStyle(.iconOnly)
            .font(.largeTitle)
            .shadow(radius: 5)
            .padding()
            
        }
    }
}

#Preview {
    ContentView()
}
