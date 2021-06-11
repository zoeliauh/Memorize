//
//  Cardify.swift
//  Memorize
//
//  Created by woanjwu liauh on 2021/6/11.
//

import SwiftUI

struct Cardify: ViewModifier {
    var isFaceUp: Bool
    
    func body(content: Content) -> some View {
        ZStack {
        if isFaceUp {
            RoundedRectangle(cornerRadius: connerRadius).fill(Color.white)
            RoundedRectangle(cornerRadius: connerRadius).stroke(lineWidth: edgeLineWidth)
            content
        } else {
            RoundedRectangle(cornerRadius: connerRadius).fill()
            }
        }
    }
    
    private let connerRadius: CGFloat = 10.5
    private let edgeLineWidth: CGFloat = 3
}

extension View {
    func cardify(isFaceUp: Bool) -> some View {
        self.modifier(Cardify(isFaceUp:isFaceUp))
    }
}
        
