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
   
    @ViewBuilder
    var body: some View {
        GeometryReader{ geometry in
            if card.isFaceUp || !card.isMatched {
                ZStack {
                    Pie(startAngle: Angle.degrees(0-90), endAngle: Angle.degrees(110-90), clockwise: true)
                        .padding(10).opacity(0.4)
                    Text(card.content)
                        .font(.system(size: fontSize(for: geometry.size)))
                }
                .cardify(isFaceUp: card.isFaceUp)
            }
    }
}
    
    //mark: Drawing Constants
    
    private func fontSize(for size: CGSize) -> CGFloat {
        min(size.width, size.height) * 0.6
    }
}

        




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        let game = EmojiMemoryGame()
        game.choose(card: game.cards[0])
        return EmojiMemoryGameView(viewModel: game)
    }
}

