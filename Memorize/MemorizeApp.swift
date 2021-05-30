//
//  MemorizeApp.swift
//  Memorize
//
//  Created by woanjwu liauh on 2021/5/21.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            EmojiMemoryGameView(viewModel: game)
        }
    }
}
