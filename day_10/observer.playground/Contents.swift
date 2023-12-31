struct Game {
    var score = 0 {
        //In orther to use this observers, the var should have an explicit type of data. Set a value or define the type.
        didSet { //Like aspects in Java. You can attach some code just after set.
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3
game.score += 1

struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)") //This var allows you to know which value will get the var.
        }

        didSet {
            print("There are now \(contacts.count) contacts.")
            print("Old value was \(oldValue)") //This special var allows you to know the value of a var BEFORE changing it.
        }
    }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen W")
app.contacts.append("Ish S")
