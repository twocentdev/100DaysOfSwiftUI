struct Player {
    let name: String
    let number: Int
    
    init(name: String, number: Int) { //This is the most basic initializer (a.k.a. constructor in Java).
        //If you wanna have multiple iitializers, you might want to create this basic one too.
        self.name = name //Use self like in Python rather than this like in Java.
        self.number = number
    }
    
    init(name: String) {
        self.name = name
        number = Int.random(in: 1...10) //Because there is no input number into the initializer you can omit the self.
    }
}


let player = Player(name: "Megan R", number: 15)
print("Player just created with name \(player.name) and id \(player.number)")
let player2 = Player(name: "Paul")
print("Player just created with name \(player2.name) and id \(player2.number)")

//If you do not want to write the basic initializer, but add more... just use an extension like this.
struct Employee {
    var name: String
    var yearsActive = 0
}

extension Employee {
    init() {
        self.name = "Anonymous"
        print("Creating an anonymous employee…")
    }
}

let roslin = Employee(name: "Laura Roslin")
print("Employee just created with name \(roslin.name).")
let anon = Employee()
print("Employee just created with name \(anon.name).")
