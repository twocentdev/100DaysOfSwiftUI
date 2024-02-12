import SwiftUI

struct ContentView: View {
    
    @State private var usedWords = [String]()
    @State private var rootWord = ""
    @State private var newWord = ""
    
    @State private var errorTitle = ""
    @State private var errorMessage = ""
    @State private var showingError = false
    
    @State private var score = 0
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    Section {
                        TextField("Enter your word", text: $newWord)
                            .textInputAutocapitalization(.never)
                    }
                    Section {
                        ForEach(usedWords, id: \.self) { word in
                            HStack {
                                Image(systemName: "\(word.count).circle")
                                Text(word)
                            }
                        }
                    }
                }
                .navigationTitle(rootWord)
                .onSubmit(addNewWord)
                .onAppear(perform: startGame)
                .alert(errorTitle, isPresented: $showingError) {
                    Button("OK") { }
                } message: {
                    Text(errorMessage)
                }
                .toolbar {
                    Button("Reset") {
                        startGame()
                    }
                }
                Text("Score: \(score)")
                    .font(.largeTitle)
            }
        }
    }
    
    func addNewWord() {
        let answer = newWord.lowercased().trimmingCharacters(in: .whitespacesAndNewlines)
        guard answer.count > 0 else { return }
        
        guard isLongEnough(word: answer) else {
            wordError(title: "Too short", message: "Correct answer must be at least 3 letters length!")
            newWord = ""
            return
        }
        guard isReal(word: answer) else {
            wordError(title: "Word not recognized", message: "You can't just make them up, you know!")
            newWord = ""
            return
        }
        guard isPossible(word: answer) else {
            wordError(title: "Word not possible", message: "You can't spell that word from '\(rootWord)'!")
            newWord = ""
            return
        }
        guard isOriginal(word: answer) else {
            wordError(title: "Word used already", message: "Be more original!")
            newWord = ""
            return
        }
        
        withAnimation {
            usedWords.insert(answer, at: 0)
        }
        addScore(word: newWord)
        newWord = ""
    }
    
    func addScore(word: String) {
        score += word.count
    }
    
    func isLongEnough(word: String) -> Bool {
        word.count >= 3
    }
    
    func isOriginal(word: String) -> Bool {
        !usedWords.contains(word)
    }
    
    func isPossible(word: String) -> Bool {
        var tempWord = rootWord
        
        for letter in word {
            if let pos = tempWord.firstIndex(of: letter) {
                tempWord.remove(at: pos)
            } else {
                return false
            }
        }
        return true
    }
    
    func isReal(word: String) -> Bool {
        let checker = UITextChecker()
        let range = NSRange(location: 0, length: word.utf16.count)
        let misspelledRange = checker.rangeOfMisspelledWord(in: word, range: range, startingAt: 0, wrap: false, language: "en")
        return misspelledRange.location == NSNotFound
    }
    
    func startGame() {
        usedWords.removeAll()
        newWord = ""
        score = 0
        if let startWordsURL = Bundle.main.url(forResource: "start", withExtension: "txt") {
            if let startWords = try? String(contentsOf: startWordsURL) {
                let allWords = startWords.components(separatedBy: "\n")
                rootWord = allWords.randomElement() ?? "silkworm"
                return
            }
        }
        // This error is "thrown" if something happends while loading start.txt
        // This kills the entire app
        fatalError("Could not load start.txt from bundle.")
    }
    
    func wordError(title: String, message: String) {
        errorTitle = title
        errorMessage = message
        showingError = true
    }
}

#Preview {
    ContentView()
}
