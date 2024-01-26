import SwiftUI

struct ButtonStyle: View {
    let label: String
    
    var body: some View {
        Text(label)
            //.font(.subheadline.weight(.heavy))
            .frame(maxWidth: .infinity)
            .padding(25)
            .background(.regularMaterial)
            .clipShape(.rect(cornerRadius: 20))
    }
}

struct ContentView: View {
    
    private let emojiOptions = ["🧻", "🪨", "✂️"]
    
    @State private var game = Game(choosenOption: Int.random(in: 0..<3), winMode: Bool.random())
    @State private var showWin = false
    @State private var showLoose = false
    
    var body: some View {
        VStack {
            Spacer()
            Spacer()
            VStack {
                Spacer()
                VStack { //Choosen option by game
                    Text(emojiOptions[game.choosenOption])
                        .font(.largeTitle)
                }
                Spacer()
                VStack { //Gamemode
                    Text("Choose the correct option in order to")
                        .foregroundStyle(.secondary)
                        .font(.subheadline.weight(.heavy))
                    Text(game.winMode ? "WIN": "LOOSE")
                        .font(.largeTitle.weight(.semibold))
                }
                Spacer()
                VStack { //Controllers
                    ForEach(0..<3) { number in
                        Button {
                            play(number)
                        } label: {
                            ButtonStyle(label: emojiOptions[number])
                        }
                        .padding(.horizontal)
                    }
                }
                .padding(10)
                Spacer()
                //Spacer()
                Section {
                    Text("Score: \(game.score)")
                        .foregroundStyle(.primary)
                        .font(.title3.weight(.semibold))
                }
                Spacer()
            }
            .background(.ultraThinMaterial)
            .clipShape(.rect(cornerRadius: 20))
        }
        .ignoresSafeArea()
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .padding()
        .background(.cyan.gradient)
        .alert("Correct!", isPresented: $showWin) {
            Button("Continue", action: newGame)
        } message: {
            Text("You've chosen the appropiate")
        }
        .alert("Wrong!", isPresented: $showLoose) {
            Button("Reset", action: newGame)
        } message: {
            Text("Se you next time")
        }
    }
    
    func newGame() {
        showWin = false
        showLoose = false
        game.newGame()
    }
    
    func play(_ player: Int) {
        if game.wins(player) {
            game.goal()
            showWin = true
        } else {
            game.reset()
            showLoose = true
        }
    }
}

struct Game {
    private let GOAL = 1
    private let MIN_SCORE = 0
    
    let options = ["paper": "scissors", "rock": "paper", "scissors": "rock"]
    var choosenOption: Int
    var score = 0
    var winMode: Bool
    
    mutating func goal() {
        score += GOAL
    }
    
    mutating func newGame() {
        choosenOption = Int.random(in: 0..<3)
        winMode.toggle()
    }
    
    mutating func reset() {
        score = MIN_SCORE
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
