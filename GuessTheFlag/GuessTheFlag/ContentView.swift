//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Jahongir Abdujalilov on 31/01/25.
//

import SwiftUI

struct ContentView: View {
    var countries = ["Estonia", "France", "Germany", "Italy", "Nigeria", "Spain", "Poland", "UK", "Ireland", "Ukraine", "US"]
   
    var correctAnswer = Int.random(in: 0...2)
    
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            
            VStack {
                VStack {
                    Text("Tap the flag of")
                        .foregroundStyle(.white)
                    Text(countries[correctAnswer])
                        .foregroundStyle(.white)
                }
                
                ForEach(0..<3) { number in
                    Button {
                        
                    } label: {
                        Image(countries[number])
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
