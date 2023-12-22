let age: Int = 18

//How to check true and false of a single statement
if age >= 18 {
    print("You can now drive and vote.")
}
if age < 18 {
    print("Try next time")
}

if age >= 18 { //Much better
    print("You can now drive and vote.")
} else { //else allows to execute code when if statement is false.
    print("Try next time")
}

let a: Bool = false
let b: Bool = true

if a {
    print("A is true")
} else if b { //You can use else and if in the same statement
    print("A is false and B is true")
} else {
    print("Neither A o B are true")
}

let temp: Int = 25

//How to check two conditions
if temp > 20 {
    if temp < 30 {
        print("It's a nice day.")
    }
}

if temp > 20 && temp < 30 { //Much better to use AND (&&), OR (||) or NOT (!) than several if statements.
    print("It's a nice day.")
}

//You alse can use enums into if statements
enum TransportOption {
    case airplane, helicopter, bicycle, car, scooter
}

let transport: TransportOption = TransportOption.airplane

if transport == .airplane || transport == .helicopter {
    print("Let's fly!")
} else if transport == .bicycle {
    print("I hope there's a bike path…")
} else if transport == .car {
    print("Time to get stuck in traffic.")
} else {
    print("I'm going to hire a scooter now!")
}
