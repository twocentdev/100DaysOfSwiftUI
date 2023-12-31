struct Album { //Struct vs class??
    let title: String //property
    let artist: String
    let year: Int

    func printSummary() { //method
        print("\(title) (\(year)) by \(artist)")
    }
}

let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)

print(red.title)
print(wings.artist)

red.printSummary()
wings.printSummary()

struct Employee {
    let name: String
    var vacationRemaining: Int = 14 //You can set a default value for a property

    //func takeVacation(days: Int) { //This will no work because the function allows to reset a property of the structure (vacationRemaining)
    mutating func takeVacation(days: Int) { //Add mutating if the function updates a var value.
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation!")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops! There aren't enough days remaining.")
        }
    }
}

//let archer = Employee(name: "Sterling Archer", vacationRemaining: 14) //This will not work because Employee has a mutating func.
var archer = Employee(name: "Sterling Archer", vacationRemaining: 14)
archer.takeVacation(days: 5)
print(archer.vacationRemaining)

var archer2 = Employee.init(name: "Sterling Archer", vacationRemaining: 14)
let kane = Employee(name: "Lana Kane") //Using the default value for vacationRemaining property.
