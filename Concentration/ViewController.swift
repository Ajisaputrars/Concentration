//
//  ViewController.swift
//  Concentration
//
//  Created by Aji Saputra Raka Siwi on 14/11/18.
//  Copyright © 2018 Aji Saputra Raka Siwi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var game: Concentration!
    var flipCount = 0
    var emojis = ["👻", "🎃", "👻", "🎃"]
    @IBOutlet var cardButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //game = Concentration()
    }
    
    @IBAction func touchCard(_ sender: UIButton) {
        flipCount += 1
        if let cardNumber = cardButtons.index(of: sender) {
            flipCard(withEmoji: emojis[cardNumber], on: sender)
        } else {
            print("Error: Not registered Emoji")
        }
    }
    
    func flipCard(withEmoji emoji: String, on button: UIButton){
        if button.currentTitle == emoji {
            button.setTitle("", for: .normal)
            button.backgroundColor = UIColor.orange
        } else {
            button.setTitle(emojis[cardButtons.index(of: button)!], for: .normal)
            button.backgroundColor = UIColor.white
        }
    }
}

extension ViewController{
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
