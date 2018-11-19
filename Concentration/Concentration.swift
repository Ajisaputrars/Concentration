//
//  Concentration.swift
//  Concentration
//
//  Created by Aji Saputra Raka Siwi on 19/11/18.
//  Copyright © 2018 Aji Saputra Raka Siwi. All rights reserved.
//

import Foundation

class Concentration{
    var cards = [Card]()
    
    func chooseCard(at index: Int){
        if cards[index].isFaceUp {
            cards[index].isFaceUp = false
        } else {
            cards[index].isFaceUp = true
        }
    }
    
    init(numberOfPairsOfCards: Int){
        for _ in 1...numberOfPairsOfCards{
            let card = Card()
            self.cards += [card, card]
        }
    }
}
