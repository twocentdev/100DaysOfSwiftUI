//Using if let
print("About to use if let")
func optionalArrayHandler (elems: [Int]?) -> Int {
    if let elems = elems {
        if let elem = elems.randomElement() {
            return elem
        }
    }
    return Int.random(in: 1...100)
}

print(optionalArrayHandler(elems: nil))
print(optionalArrayHandler(elems: []))
print(optionalArrayHandler(elems: [1, 2, 3, 4, 5]))

//Using guard
print("About to use guard")
func _optionalArrayHandler (elems: [Int]?) -> Int {
    guard let elems: [Int] = elems else {
        return Int.random(in: 1...100)
    }
    guard let elem: Int = elems.randomElement() else {
        return Int.random(in: 1...100)
    }
    return elem
}

print(_optionalArrayHandler(elems: nil))
print(_optionalArrayHandler(elems: []))
print(_optionalArrayHandler(elems: [1, 2, 3, 4, 5]))

//Using optional chaining and nil coalescing
print("About to use optional chaining and nil coalescing")
func __optionalArrayHandler (elems: [Int]?) -> Int {
    return elems?.randomElement() ?? Int.random(in: 1...100)
}

print(__optionalArrayHandler(elems: nil))
print(__optionalArrayHandler(elems: []))
print(__optionalArrayHandler(elems: [1, 2, 3, 4, 5]))
