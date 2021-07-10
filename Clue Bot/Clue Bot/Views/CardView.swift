//
//  Card.swift
//  Clue Bot
//
//  Created by Danny Sedlov on 2021-07-10.
//

import SwiftUI

struct CardView: View  {
    var card:Card? = Card()
    
    var body: some View {
        Image(card?.getType() ?? "Back").resizable().scaledToFit().clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
    }
}

struct Card_Previews: PreviewProvider  {
    static var previews: some View {
        CardView(card: Card(type: CardType.Library))
    }
}
