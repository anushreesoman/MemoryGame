//
//  BoardView.swift
//  MemoryGame
//
//  Created by Anushree Soman on 11/20/22.
//

import SwiftUI

struct BoardView: View {
    var themeCards = [String]()
    
    @State var cardCount = Int.random(in: 4..<8)
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem(), GridItem()]) {
                    ForEach(themeCards[0..<cardCount], id: \.self) { cardFace in
                        CardView(imageName: cardFace,
                                 isFaceUp: true)
                        .aspectRatio(2/3, contentMode: .fit)
                    }
                    .foregroundColor(.orange)
                }
            }
        }
        .padding(.horizontal)
    }
}

struct BoardView_Previews: PreviewProvider {
    static var previews: some View {
        BoardView()
    }
}
