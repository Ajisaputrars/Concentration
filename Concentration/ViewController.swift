//
//  ViewController.swift
//  Concentration
//
//  Created by Aji Saputra Raka Siwi on 14/11/18.
//  Copyright © 2018 Aji Saputra Raka Siwi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var game:Concentration!
    var emojis = ["👻", "🎃", "🦇" , "🌜", "🌞", "🌟", "🌪", "🦉"]
    var emoji = [Int:String]()
    
    @IBOutlet var cardButtons: [UIButton]!
    @IBOutlet weak var flipCountLabel: UILabel!
    @IBOutlet weak var winLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        winLabel.text = ""
        game = Concentration(numberOfPairsOfCards: (cardButtons.count + 1) / 2)
    }
    
    @IBAction func newGameButton(_ sender: UIButton) {
        game = nil
        emojis = ["👻", "🎃", "🦇" , "🌜", "🌞", "🌟", "🌪", "🦉"]
        emoji.removeAll()
        
        game = Concentration(numberOfPairsOfCards: (cardButtons.count + 1) / 2)
        updateViewFromModel()
    }
    
    @IBAction func touchCard(_ sender: UIButton) {
        if let cardNumber = cardButtons.index(of: sender) {
            game.chooseCard(at: cardNumber)
            updateViewFromModel()
        } else {
            print("Error: Not registered Emoji")
        }
        if game.countMatch == 12 {
            winLabel.text = "Win!"
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
        flipCountLabel.text = String(game.flipCount)
    }
    
    func emoji(for card: Card) -> String{
        if emoji[card.identifier] == nil, emojis.count > 0 {
            let randomIndex = Int(arc4random_uniform(UInt32(emojis.count)))
            emoji[card.identifier] = emojis.remove(at: randomIndex)
        }
        return emoji[card.identifier] ?? "?"
    }
}

extension ViewController{
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
