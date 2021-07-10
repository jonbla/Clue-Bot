//
//  Card.swift
//  Clue Bot
//
//  Created by Danny Sedlov on 2021-07-10.
//

import Foundation
public enum CardType : CaseIterable{
    case Back
    
    case Blue
    case Green
    case Purple
    case Red
    case White
    case Yellow
    
    case Candle_Stick
    case Knife
    case Lead_Pipe
    case Revolver
    case Rope
    case Wrench
    
    case Ball_Room
    case Billiard_Room
    case Conservatory
    case Dining_Room
    case Hall
    case Kitchen
    case Library
    case Lounge
    case Study
}

var TypeDict = [CardType.Blue: "Mrs. Peacock",
                        CardType.Green: "Mr. Green",
                        CardType.Purple: "Professor Plum",
                        CardType.Red: "Miss Scarlet",
                        CardType.White: "Mrs. White",
                        CardType.Yellow: "Colonel Mustard",
                        
                        CardType.Candle_Stick: "Candle Stick",
                        CardType.Knife: "Knife",
                        CardType.Lead_Pipe: "Lead Pipe",
                        CardType.Revolver: "Revolver",
                        CardType.Rope: "Rope",
                        CardType.Wrench: "Wrench",
                        
                        CardType.Ball_Room: "Ball Room",
                        CardType.Billiard_Room: "Billiard Room",
                        CardType.Conservatory: "Conservatory",
                        CardType.Dining_Room: "Dining Room",
                        CardType.Hall: "Hall",
                        CardType.Kitchen: "Kitchen",
                        CardType.Library: "Library",
                        CardType.Lounge: "Lounge",
                        CardType.Study: "Study",

                        CardType.Back: "Back"]
struct Card {
    var type:CardType?
    
    func getType() -> String{
        var returnVal: String = ""
        
        returnVal = TypeDict[type ?? CardType.Back] ?? "Back"
        
        return returnVal
    }
    
    mutating func setType(type: CardType){
        self.type = type
    }
}
