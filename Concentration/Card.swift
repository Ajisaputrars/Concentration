//
//  Card.swift
//  Concentration
//
//  Created by Aji Saputra Raka Siwi on 19/11/18.
//  Copyright © 2018 Aji Saputra Raka Siwi. All rights reserved.
//

import Foundation

struct Card{
    var isFaceUp = false
    var isMatch = false
    var identifier: Int
    
    init (identifier: Int){
        self.identifier = identifier
    }
}
