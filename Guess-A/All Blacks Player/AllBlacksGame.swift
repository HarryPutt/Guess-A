//
//  AllBlacksGame.swift
//  Guess-A
//
//  Created by Harrison Putt on 17/8/2022.
//

import SwiftUI

func randomPlayer(difficulty: String) -> String {
    if difficulty == "easy" {
        return playersEasy.playersE(Int.random(in: 0...15))
    }
}
struct AllBlacksGame: View {
    var level: String
    @State private var guess = ""
    @State private var answer = randomPlayer(level)
    
    var body: some View {
        VStack{
            Image("George Bower")
            TextField("Guess the player here", text: $guess)
                .padding(5)
                .border(.black, width: 2.0)
                .padding(15)
            Button("Check Guess"){
                
            }
            .padding()
            .border(Color.black)
            .background(Color.black)
            .foregroundColor(Color.white)
        }
    }
}

struct AllBlacksGame_Previews: PreviewProvider {
    static var previews: some View {
        AllBlacksGame(level: "")
    }
}
