//
//  CardView.swift
//  MemoryGame
//
//  Created by Anushree Soman on 11/20/22.
//

import SwiftUI

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
                    .strokeBorder(lineWidth: 3)
                Image(systemName: imageName)
                    .renderingMode(.original)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(10)
            }
            else{
                RoundedRectangle(cornerRadius: 25)
                    .fill()
            }
        }
        .onTapGesture {
            isFaceUp.toggle()
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(imageName: "plus.circle", isFaceUp: true)
    }
}
