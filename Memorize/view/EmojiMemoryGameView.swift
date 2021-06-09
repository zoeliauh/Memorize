//
//  EmojiMemoryGameView.swift
//  Memorize
//
//  Created by woanjwu liauh on 2021/5/21.
//

import SwiftUI

struct EmojiMemoryGameView: View {
    @ObservedObject var viewModel: EmojiMemoryGame
    
    var body: some View {
        Grid (viewModel.cards) { card in
                CardView(card: card).onTapGesture {
                    self.viewModel.choose(card: card)
                }
            .padding(5)
            }
                .padding()
                .foregroundColor(Color.orange)
            //.font(.largeTitle) 移至 GeometryReader 下定義, 可以設定長寬
            //.font(.system(size: 35)) 用 font 的方式下定義，只能設定大小，粗斜體...(我猜測啦)
    }
}

struct CardView: View {
    var card: MemoryGame<String>.Card
    
    var body: some View {
        GeometryReader{ geometry in
            ZStack {
                if card.isFaceUp {
                    RoundedRectangle(cornerRadius: connerRadius).fill(Color.white)
                    RoundedRectangle(cornerRadius: connerRadius).stroke(lineWidth: edgeLineWidth)
                    Text(card.content)
                } else {
                    if !card.isMatched {
                    RoundedRectangle(cornerRadius: connerRadius).fill()
                    }
                }
            }
            .font(.system(size: fontSize(for: geometry.size)))
        }
    }
    
    
    //mark: Drawing Constants

    private let connerRadius: CGFloat = 10.5
    private let edgeLineWidth: CGFloat = 3
    //let fontScaleFactor: CGFloat = 0.75
    
    private func fontSize(for size: CGSize) -> CGFloat {
        min(size.width, size.height) * 0.75 //fontScaleFactor
    }
}






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiMemoryGameView(viewModel: EmojiMemoryGame())
    }
}

