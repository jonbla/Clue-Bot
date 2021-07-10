//
//  Card.swift
//  Clue Bot
//
//  Created by Danny Sedlov on 2021-07-10.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        Image("Back").resizable().scaledToFit()
    }
}

struct Card_Previews: PreviewProvider  {
    static var previews: some View {
        CardView()
    }
}
