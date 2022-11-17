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
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .stroke(lineWidth: 3)
                        .foregroundColor(.orange)
                    Image(systemName: "suit.spade.fill").renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(20)
                }
            }
            .padding(.horizontal)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
