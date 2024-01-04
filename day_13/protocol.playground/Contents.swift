//Protocols are like Java interfaces, they offer a serial of methods and properties binded into a new type of struct or class.

protocol Vehicle { //This protocol stabishes what a Wehicle should offer, in terms of properties and functions. But it does not "says" (implements) how to.
    var name: String { get }
    var currentPassengers: Int { get set }
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

//When you wanna "implements" a protocol...
//You must "implements" all the methods that were defined in the protocol.
struct Car: Vehicle {
    let name = "Car"
    var currentPassengers: Int = 1
    
    func estimateTime(for distance: Int) -> Int {
        return distance/50
    }
    
    func travel(distance: Int) {
        print("Im driving \(distance) km")
    }
    
    func openSunroof () { //YOu can add extra methods in a class that "implements" a protocol.
        print("It's a nice day.")
    }
}

//Now you can use this struct (Car) into a function
func commute(distance: Int, using vehicle: Car) {
    print("About to use commute() only for Cars.") //This print is only to know what commute is running.
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow! I'll try a different vehicle.")
    } else {
        vehicle.travel(distance: distance)
    }
}

let car = Car()
commute(distance: 100, using: car)

//But you can also define a function that "uses" a protocol, instead of a class or struct.
func commute(distance: Int, using vehicle: Vehicle) {
    print("About to use commute() for every Vehicle.")
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow! I'll try a different vehicle.")
    } else {
        vehicle.travel(distance: distance)
    }
}

let car2: Vehicle = Car()
commute(distance: 200, using: car2)

//Now, you can define a new type of Vehicle...
struct Bicycle: Vehicle {
    let name = "Bicycle"
    var currentPassengers: Int = 1
    
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }

    func travel(distance: Int) {
        print("I'm cycling \(distance)km.")
    }
}

let bike: Vehicle = Bicycle()
//And use it like a Car.
commute(distance: 50, using: bike)



func getTravelEstimates(using vehicles: [Vehicle], distance: Int) {
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance)km")
    }
}
getTravelEstimates(using: [car, bike], distance: 150)


//Another, much easier, example.
protocol Purchaseable {
    var name: String { get set }
}

struct Book: Purchaseable {
    var name: String
    var author: String
}

struct Movie: Purchaseable {
    var name: String
    var actors: [String]
}

struct Coffee: Purchaseable {
    var name: String
    var strength: Int
}

func buy(_ item: Purchaseable) {
    print("I'm buying \(item.name)")
}

var purchases = [Purchaseable] ()
let book = Book(name: "The Lord of the Rings", author: "J. R. Tolkien")
let movie = Movie(name: "Back to the Future", actors: ["Michael J. Fox", "Christopher Lloyd"])
let coffee = Coffee(name: "Expresso", strength: 9)

purchases.append(book)
purchases.append(movie)
purchases.append(coffee)

for e in purchases {
    print(e.name)
}
