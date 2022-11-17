//
//  ContentView.swift
//  MemoryGame
//
//  Created by Anushree Soman on 11/17/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            HStack{
                CardView(imageName: "suit.spade.fill")
                CardView(imageName: "suit.spade.fill")
                CardView(imageName: "suit.diamond.fill")
                CardView(imageName: "suit.diamond.fill")
            }
            HStack{
                CardView(imageName: "suit.heart.fill")
                CardView(imageName: "suit.heart.fill")
                CardView(imageName: "suit.club.fill")
                CardView(imageName: "suit.club.fill")
            }
            HStack{
                CardView(imageName: "star.fill")
                CardView(imageName: "star.fill")
                CardView(imageName: "diamond.circle.fill")
                CardView(imageName: "diamond.circle.fill")
            }
            HStack{
                CardView(imageName: "star.square.fill")
                CardView(imageName: "star.square.fill")
                CardView(imageName: "heart.circle.fill")
                CardView(imageName: "heart.circle.fill")
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
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .stroke(lineWidth: 3)
                .foregroundColor(.orange)
            Image(systemName: "\(imageName)").renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(20)
        }
    }
}
