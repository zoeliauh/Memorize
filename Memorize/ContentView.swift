//
//  ContentView.swift
//  Memorize
//
//  Created by woanjwu liauh on 2021/5/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ForEach(0..<4) { index in
                ZStack {
                    RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                    RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3)
                    Text("👻")
                }
            }
        }
            .padding()
            .foregroundColor(Color.orange)
            .font(Font.largeTitle)
    }
}













struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
