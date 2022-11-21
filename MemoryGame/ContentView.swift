//
//  ContentView.swift
//  MemoryGame
//
//  Created by Anushree Soman on 11/17/22.
//

import SwiftUI

struct ContentView: View {
    let transportCardFaces = ["airplane", "car", "bus", "tram", "cablecar", "ferry", "scooter", "bicycle", "sailboat", "figure.walk", "car.2", "bus.doubledecker.fill"]
        
        let deckCardFaces = ["suit.spade.fill", "suit.diamond.fill", "suit.heart.fill", "suit.club.fill", "suit.heart", "suit.club", "suit.diamond", "suit.spade"]
        
        let miscCardFaces = ["star.fill", "star.square.fill", "heart.circle.fill", "bolt.fill", "camera.on.rectangle.fill", "photo", "eye.fill"]
    
    var themes = ["Deck of Cards","Transport", "Miscellanous"]
    var body: some View {
        VStack {
            NavigationStack {
                Form {
                    ForEach(themes, id: \.self) { theme in
                        NavigationLink(theme, destination: BoardView(themeCards: getThemedCards(theme: theme)))
                    }
                }
                .navigationTitle("Memorize")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension ContentView {
    func getThemedCards(theme: String) -> [String] {
        switch theme {
        case "Deck of Cards":
            return deckCardFaces
        case "Transport":
            return transportCardFaces
        default:
            return miscCardFaces
        }
    }
}
