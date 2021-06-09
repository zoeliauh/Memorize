//
//  EmoijMemoryGame.swift
//  Memorize
//
//  Created by woanjwu liauh on 2021/5/22.
//

import SwiftUI



class EmojiMemoryGame: ObservableObject {
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    private static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["🎃","👻","🍄","🍭"]
        return MemoryGame<String>(numberPairsOfCards: emojis.count) { pairIndex in
            return emojis[pairIndex]
        }
    }

    // Mark: - Access to the Model
    var cards: Array<MemoryGame<String>.Card> {
        model.cards
    }
    
    // Mark: -Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
