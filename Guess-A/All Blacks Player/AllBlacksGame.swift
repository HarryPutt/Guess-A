//
//  AllBlacksGame.swift
//  Guess-A
//
//  Created by Harrison Putt on 17/8/2022.
//

import SwiftUI


struct AllBlacksGame: View {
    var level: String
    var correct: String
    @State private var guess = ""
    @State private var currentScore = 10
    @State private var correctAlert = false
    @State private var incorrectAlert = false
    @State private var failAlert = false
    @State private var helpAlert = false
    @Environment(\.presentationMode) var presentation
    
    var body: some View {
        VStack{
            Text("Guess an All Black's Player")
                .alert(isPresented: $failAlert) {
                    Alert(title: Text("Fail"), message: Text("You didn't guess the player correctly"), dismissButton: .default(Text("Play Again"), action: {
                        self.presentation.wrappedValue.dismiss()
                    }))
                }
            Image(correct)
                .alert(isPresented: $correctAlert) {
                    Alert(title: Text("Correct"), message: Text("Correct! Congratulations!                        Your score was " + String(currentScore)), dismissButton: .default(Text("Play Again"), action: {
                        self.presentation.wrappedValue.dismiss()
                    }))
                }
            TextField("Guess the player here", text: $guess)
                .padding(5)
                .border(.black, width: 2.0)
                .padding(15)
                .alert(isPresented: $incorrectAlert) {
                    Alert(title: Text("Incorrect"), message: Text("Incorrect!"), dismissButton: .default(Text("OK")))
                }
            Button("Check Guess"){
                if currentScore <= 0 {
                    failAlert.toggle()
                }
                else if guess == correct {
                    correctAlert.toggle()
                }
                else {
                    self.currentScore -= 1
                    incorrectAlert.toggle()
                }
            }
            .toolbar {
                Button() {
                    helpAlert.toggle()
                } label: {
                    Image(systemName: "questionmark.circle")
                }
                    .foregroundColor(.blue)
            }
            .alert(isPresented: $helpAlert) {
                
                Alert(title: Text("Help"), message: Text("Type into the textfield box to write your guess and then press submit to check your guess"), dismissButton: .default(Text("Ok")))
                
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
        AllBlacksGame(level: "", correct: "")
    }
}
