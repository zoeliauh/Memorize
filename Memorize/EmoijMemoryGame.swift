//
//  EmoijMemoryGame.swift
//  Memorize
//
//  Created by woanjwu liauh on 2021/5/22.
//

import SwiftUI



class EmojiMemoryGame {
    private var model: MemoryGame<String> =
        MemoryGame<String>(numberPairsOfCards: 2, cardContentFactory: { (pairIndex: Int) -> String in
            return "👊"
        })
    
    // Mark: - Access to the Model
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // Mark: -Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
