//
//  Concentration.swift
//  Concentration
//
//  Created by Aji Saputra Raka Siwi on 19/11/18.
//  Copyright © 2018 Aji Saputra Raka Siwi. All rights reserved.
//

import Foundation

class Concentration{
    var countMatch = 0
    
    var cards = [Card]()
    
    private var _flipCount = 0
    var flipCount:Int{
        return _flipCount
    }
    
    var indexOfOneAndOnlyFaceUpCard: Int?
    
    func chooseCard(at index: Int){
        if !cards[index].isMatch {
            if let matchIndex = indexOfOneAndOnlyFaceUpCard, matchIndex != index {
                if cards[matchIndex].identifier == cards[index].identifier {
                    cards[matchIndex].isMatch = true
                    cards[index].isMatch = true
                }
                cards[index].isFaceUp = true
                indexOfOneAndOnlyFaceUpCard = nil
                _flipCount += 1
            } else {
                for flipDownIndex in cards.indices {
                    cards[flipDownIndex].isFaceUp = false
                }
                if indexOfOneAndOnlyFaceUpCard == nil {
                    _flipCount += 1
                }
                cards[index].isFaceUp = true
                indexOfOneAndOnlyFaceUpCard = index
                
            }
        }
        
        countMatch = 0
        for i in cards {
            if i.isMatch {
                countMatch += 1
            }
        }
        
        if countMatch >= 12 {
            for flipDownIndex in cards.indices {
                cards[flipDownIndex].isFaceUp = false
            }
        }
    }
    
    init(numberOfPairsOfCards: Int){
        for _ in 1...numberOfPairsOfCards{
            let card = Card()
            self.cards += [card, card]
        }
        let shuffledCards = cards.shuffled()
        cards.removeAll()
        cards = shuffledCards
        
        _flipCount = 0
    }
}
