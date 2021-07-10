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
                        SwipeView().frame(/*width: swipeWidth,*/ height: getSwipeHeight())
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
    
    func getSwipeHeight() -> CGFloat{
        var returnVal:CGFloat = 150
        
        switch NumberofCards{
        case 2:
            returnVal = 250
            break
        case 3:
            returnVal = 150
            break
        case 4:
            returnVal = 100
            break
        case 5:
            returnVal = 70
            break
            
        default:
            returnVal = 150
        }
        return returnVal
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
