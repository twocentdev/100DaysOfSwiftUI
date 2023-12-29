func greetings() {
    print("Hello world!")
}

var greetCopy = greetings //Like this you can create a copy of a function.
greetCopy() //Then just call it.

let sayHello = { //So this is a closure (see lambda/anonymous function in JS or Java). A "short" way of doing the same as above.
    print("Hello world!")
}
sayHello()

let sayName = {(name: String) -> String in //This is how to make closures (a.k.a. lambda/anonymous function) to accept params and return a value. "IN" is mandatory.
    "Hi \(name)" //If closure (a.k.a. lambda/anonymous function) ONLY contains a single line, it would be returned if there is something to return (no void).
}
sayName("Pedro") //You can avoid using params names if you are calling a closure (a.k.a. lambda/anonymous function) or a function type.
//sayName(name: "Pedro") //This would be the "normal" way of calling a function.

let _greetCopy: () -> Void = greetings //Another way of copy a function. Also call function type.
_greetCopy()

func getUserData(for id: Int) -> String { //Another example of the previous
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}
let data: (Int) -> String = getUserData
let user = data(1989)
print(user) //Taylor Swift

//So... what are closures used for?? See the next example.
let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()//How to sort an Array... easy.
print(sortedTeam) //Gloria, Piper, Suzanne, Tasha, Tiffany

func captainFirstSorted(name1: String, name2: String) -> Bool { //This function will be used as a new way to sort Arrays... see later.
    let captain = "Suzanne"
    if name1 == captain {
        return true
    } else if name2 == captain {
        return false
    }
    return name1 < name2
}

let captainFirstTeam = team.sorted(by: captainFirstSorted) //See? You can use a function as an input param for another function.
//sorted() accepts as input param a function like (String, String) -> Bool. You can use this to create new ways of sorting Arrays.
print(captainFirstTeam) //Suzanne, Gloria, Piper, Tasha, Tiffany

let _captainFirstTeam = team.sorted(by: {(name1: String, name2: String) -> Bool in
    let captain = "Suzanne"
    if name1 == captain {
        return true
    } else if name2 == captain {
        return false
    }
    return name1 < name2
})
print(_captainFirstTeam) //Suzanne, Gloria, Piper, Tasha, Tiffany

let payment = {() -> Bool in //You can define a closure that does NOT require input params but returns something.
    print("Paying an anonymous person...")
    return true
}
print(payment()) //true
