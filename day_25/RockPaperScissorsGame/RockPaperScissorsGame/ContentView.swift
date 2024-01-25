import SwiftUI

struct ContentView: View {
    
    @State private var game = Game(choosenOption: Int.random(in: 1..<3), winMode: Bool.random())
    
    @State private var showWin = false
    @State private var showLoose = false
    
    var body: some View {
        VStack {
            Spacer()
            Section { //Choosen option by game
                Text(Array(game.options.keys)[game.choosenOption])
            }
            Spacer()
            Section { //Gamemode
                Text("Choose the correct option in order to")
                Text(game.winMode ? "WIN": "LOOSE")
            }
            Spacer()
            Section { //Controllers
                ForEach(0..<3) { number in
                    Button {
                        play(number)
                    } label: {
                        Text(Array(game.options.keys)[number])
                    }
                }
            }
            Spacer()
            Spacer()
        }
        .padding()
        .alert("You won", isPresented: $showWin) {
            Button("Continue", action: newGame)
        } message: {
            Text("You've won this game")
        }
        .alert("You loose", isPresented: $showLoose) {
            Button("Reset", action: newGame)
        } message: {
            Text("You've loose this game")
        }
    }
    
    func newGame() {
        showWin = false
        showLoose = false
        game.newGame()
    }
    
    func play(_ player: Int) {
        if game.wins(player) {
            showWin = true
        } else {
            showLoose = true
        }
    }
}

struct Game {
    
    let options = ["paper": "scissors", "rock": "paper", "scissors": "rock"]
    var choosenOption: Int
    var winMode: Bool
    
    mutating func newGame() {
        choosenOption = Int.random(in: 0..<3)
        winMode.toggle()
    }
    
    func wins (_ player: Int) -> Bool {
        let gameOption = Array(options.keys)[choosenOption]
        let playerOption = Array(options.keys)[player]
        
        if winMode {
            return options[gameOption] == playerOption
        } else {
            return options[gameOption] != playerOption
        }
    }
}

#Preview {
    ContentView()
}
