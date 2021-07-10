//
//  ContentView.swift
//  Clue Bot
//
//  Created by Danny Sedlov on 2021-07-10.
//

import SwiftUI

struct ContentView: View {
    @State private var NumberofCards = 3
    let stepRange = 2...5
    
    var body: some View {
        ZStack {
            Color(.orange).opacity(0.2).edgesIgnoringSafeArea(.all).padding(-20)
            VStack {
                Text("Clue")
                    .font(.largeTitle)
                    .padding()
                Spacer()
                Text("Select your cards")
                    .padding()
                    .font(.body)
                HStack {
                    ForEach((1...NumberofCards), id: \.self) {
                            CardView()
                            let tempString = "\($0)…"
                    }
                }
                Spacer()
                Stepper(value: $NumberofCards, in: stepRange, step: 1) {
                    Text("Number of Cards: \(NumberofCards)")
                }
            }
        }
        .foregroundColor(Color.black.opacity(0.7))
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .leading)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
