//
//  ViewController.swift
//  Concentration
//
//  Created by Aji Saputra Raka Siwi on 14/11/18.
//  Copyright © 2018 Aji Saputra Raka Siwi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var game = Concentration(numberOfPairsOfCards: (cardButtons.count + 1) / 2)
    var flipCount = 0
    var emojis = ["👻", "🎃", "🦇" , "🌜", "🌞", "🌟", "🌪", "🦉"]
    @IBOutlet var cardButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        game = Concentration(numberOfPairsOfCards: cardButtons.count / 2)
    }
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender) {
//            flipCard(withEmoji: emojis[cardNumber], on: sender)
            game.chooseCard(at: cardNumber)
            updateViewFromModel()
        } else {
            print("Error: Not registered Emoji")
        }
    }
    
    func updateViewFromModel(){
        for index in cardButtons.indices {
            let button = cardButtons[index]
            let card = game.cards[index]
            if card.isFaceUp {
                button.setTitle(emoji(for: card), for: .normal)
                button.backgroundColor = UIColor.white
            } else {
                button.setTitle("", for: .normal)
                button.backgroundColor = card.isMatch ? UIColor.clear : UIColor.orange
            }
        }
    }
    
    func emoji(for card: Card) -> String{
        return "?"
    }
    
//    func flipCard(withEmoji emoji: String, on button: UIButton){
//        if button.currentTitle == emoji {
//
//        } else {
//
//        }
//    }
}

extension ViewController{
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
