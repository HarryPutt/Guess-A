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
            TextField("Harry waz 'ere!", text: $guess)
                .padding(5)
                .border(.black, width: 2.0)
                .padding(15)
        }
    }
}

struct AllBlacksGame_Previews: PreviewProvider {
    static var previews: some View {
        AllBlacksGame()
    }
}
