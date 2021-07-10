//
//  Card.swift
//  Clue Bot
//
//  Created by Danny Sedlov on 2021-07-10.
//

import SwiftUI

struct CardView: View {
    let numberOfCards = 2
    var body: some View {
        HStack {
            /*ForEach((1...numberOfCards), id: \.self) {
                    Image("Back")
                    let tempString = "\($0)…"
                    //Text("\($0)…")
            }*/
        }
        Image("Back").resizable().scaledToFit()
    }
}

struct Card_Previews: PreviewProvider  {
    static var previews: some View {
        CardView()
    }
}
