func makeArray(size: Int, using generator: () -> Int) -> [Int] { //generator is a function.
    var numbers = [Int]()

    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }

    return numbers
}

let rolls = makeArray(size: 50) { //Short way of passing a function (closure) as an input param
    Int.random(in: 1...20)
}

func generateNumber() -> Int {
    Int.random(in: 1...20)
}
let newRolls = makeArray(size: 50, using: generateNumber) //'General' way of passing a function as an input param. 1st create the function, 2nd passing it.
print(newRolls)

func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) { //You can put more than one function as input.
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
    print("Done!")
}

doImportantWork { //This is how to use several closures into the same function. The first one is "auto-assigned" to the first param.
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}
