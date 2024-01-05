let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]

let peachOpposite = opposites["Peach"] //There is no value for Peach in opposites, which value should be returned??
//print(peachOpposite) //This will not work because there is no peachOpposite

if let marioOpposite = opposites["Mario"] { //Because a dict might or might not have a value for a given key, you can do this in order to write safe code.
    print("Mario's opposite is \(marioOpposite)")
}

var username: String? = nil //Here is how you define an optional, a var that might or might not have a value. nil will be assigned if no other value is assigned.

if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional String? was empty.")
}

func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil
//print(square(number: number)) //nil is not 0.
if let unwrappedNumber = number { //You need to unwrap vars that are optional.
    print(square(number: unwrappedNumber))
} else {
    print("The optional Int? was empty.")
}

if let number = number { //You can unrwap vars on constants with the same name, because you really do not care about the constant.
    print(square(number: number))
} else {
    print("The optional Int? was empty.")
}
