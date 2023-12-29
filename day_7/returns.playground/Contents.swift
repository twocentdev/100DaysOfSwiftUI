func rollDice() -> Int { //In order to defina a function that returns something, use this '-> %TYPE%'.
    // If a return type is defined, the function MUST returns ALWAYS something.
    return Int.random(in: 1...6) //Use return to tell swift what a function returns.
}

let result = rollDice() //result storages the returned value from the function.
print(result)

func areCharsEqual(string1: String, string2: String) -> Bool {
    //return string1.sorted() == string2.sorted()
    string1.sorted() == string2.sorted() //If the function contains only ONE line of code, return can be avoided.
}
areCharsEqual(string1: "abc", string2: "cab") //true
areCharsEqual(string1: "abc", string2: "cad") //false
