//
//  BoardView.swift
//  MemoryGame
//
//  Created by Anushree Soman on 11/20/22.
//

import SwiftUI

struct BoardView: View {
    let cardFaces = ["suit.spade.fill", "suit.diamond.fill", "suit.heart.fill", "suit.club.fill", "suit.heart", "suit.club", "suit.diamond", "suit.spade", "airplane", "car", "bus", "tram", "cablecar", "ferry", "scooter", "bicycle", "sailboat", "figure.walk", "car.2", "bus.doubledecker.fill", "star.fill", "star.square.fill", "heart.circle.fill", "bolt.fill", "camera.on.rectangle.fill", "photo", "eye.fill"]
    
    @State var cardCount = 4
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(), GridItem(), GridItem(), GridItem()]) {
                    ForEach(cardFaces[0..<cardCount], id: \.self) { cardFace in
                        CardView(imageName: cardFace,
                                 isFaceUp: true)
                        .aspectRatio(2/3, contentMode: .fit)
                    }
                    .foregroundColor(.orange)
                }
            }
            
            HStack {
                remove
                Spacer()
                add
            }
            .font(.largeTitle)
        }
        .padding(.horizontal)
    }
    var add: some View {
        Button {
            if cardCount < cardFaces.count {
                cardCount += 1
            }
        } label: {
            Image(systemName: "plus.circle")
        }
    }
    var remove: some View {
        Button {
            if cardCount > 1 {
                cardCount -= 1
            }
        } label: {
            Image(systemName: "minus.circle")
        }
    }
}

struct BoardView_Previews: PreviewProvider {
    static var previews: some View {
        BoardView()
    }
}
