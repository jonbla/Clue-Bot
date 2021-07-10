//
//  SwipeView.swift
//  Clue Bot
//
//  Created by Danny Sedlov on 2021-07-10.
//

import SwiftUI

struct SwipeView: View {
    var body: some View {
        List{
            ForEach((CardType.allCases), id: \.self) {
                CardView(card: Card(type: $0))
            }
        }
    }
}

struct SwipeView_Previews: PreviewProvider {
    static var previews: some View {
        SwipeView().listRowBackground(Color.clear)
    }
}
