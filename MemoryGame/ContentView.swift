//
//  ContentView.swift
//  MemoryGame
//
//  Created by Anushree Soman on 11/17/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                CardView(imageName: "suit.spade.fill",
                         isFaceUp: false)
                CardView(imageName: "suit.spade.fill",
                         isFaceUp: true)
                CardView(imageName: "suit.diamond.fill",
                         isFaceUp: true)
                CardView(imageName: "suit.diamond.fill",
                         isFaceUp: true)
            }
            HStack {
                CardView(imageName: "suit.heart.fill",
                         isFaceUp: true)
                CardView(imageName: "suit.heart.fill",
                         isFaceUp: true)
                CardView(imageName: "suit.club.fill",
                         isFaceUp: true)
                CardView(imageName: "suit.club.fill",
                         isFaceUp: false)
            }
            HStack {
                CardView(imageName: "star.fill",
                         isFaceUp: true)
                CardView(imageName: "star.fill",
                         isFaceUp: false)
                CardView(imageName: "suit.diamond",
                         isFaceUp: true)
                CardView(imageName: "suit.diamond",
                         isFaceUp: true)
            }
            HStack {
                CardView(imageName: "star.square.fill",
                         isFaceUp: true)
                CardView(imageName: "star.square.fill",
                         isFaceUp: true)
                CardView(imageName: "heart.circle.fill",
                         isFaceUp: false)
                CardView(imageName: "heart.circle.fill",
                         isFaceUp: true)
            }
        }
        .padding(.horizontal)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CardView: View {
    var imageName: String
    @State var isFaceUp: Bool
    
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 25)
                    .fill()
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 25)
                    .stroke(lineWidth: 3)
                    .foregroundColor(.orange)
                Image(systemName: imageName).renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(20)
            }
            else{
                RoundedRectangle(cornerRadius: 25)
                    .fill()
                    .foregroundColor(.orange)
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}
