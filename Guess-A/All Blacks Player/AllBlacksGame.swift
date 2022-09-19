//
//  AllBlacksGame.swift
//  Guess-A
//
//  Created by Harrison Putt on 17/8/2022.
//

import SwiftUI

struct AllBlacksGame: View {
    
    @State private var guess = ""
    
    var body: some View {
        VStack{
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
        AllBlacksGame()
    }
}
