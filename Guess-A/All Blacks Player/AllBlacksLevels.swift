//
//  allBlacksPlayerView.swift
//  Guess-A
//
//  Created by Sarah Tor on 29/6/2022.
//

import SwiftUI

var randomNum = 0

func randomPlayer() -> String {
    randomNum = Int.random(in: 0...14)
    return playersEasy.playersE[randomNum]
}


struct AllBlacksLevels: View {
    var body: some View {
        VStack {
            VStack {
                Text("GUESS")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(0.2)
                Text("AN")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(0.2)
                Text("ALL BLACK")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .padding(0.2)
            }
            .padding()
            VStack {
                Text("Difficulty Selection")
                    .foregroundColor(.white)
                RoundedRectangle(cornerRadius: 100, style: .continuous)
                    .frame(width: 160, height: 1)
                    .foregroundColor(.white)
                VStack {
                    NavigationLink(destination: AllBlacksGame(level: "easy", correct: randomPlayer())) {
                        Text("Easy")
                            .foregroundColor(.white)
                            .background(RoundedRectangle(cornerRadius: 18).fill(Color.green).frame(width: 165, height: 50))
                    }
                    .padding(20)
                    NavigationLink(destination: AllBlacksGame(level: "hard", correct: randomPlayer())) {
                        Text("Hard")
                            .foregroundColor(.white)
                            .background(RoundedRectangle(cornerRadius: 18).fill(Color.red).frame(width: 165, height: 50))
                    }
                    .padding(20)
                }
                .padding(25)
            }
            .padding(.vertical, 80)
            
        }
        .background(.black)
    }
}

struct AllBlacksLevels_Previews: PreviewProvider {
    static var previews: some View {
        AllBlacksLevels()
    }
}
