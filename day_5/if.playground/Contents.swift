if true {
    print("This is true.") //This line is printed
} else {
    print("Never gonna be false.") //This is not printed
}

let score: Int = 85
if score > 80 {
    print("Great job.") //This line is printed
}

//Somehow to remove 'overfilled' arrays
var numbers: [Int] = [1, 2, 3]
numbers.append(4)

if numbers.count > 3 {
    numbers.remove(at: 0)
}

print(numbers) //[2, 3, 4]

//How to check if a String is empty
let name: String = "some name"

if name == "" {
    print("This String is empty.")
}
if name.count == 0 {
    print("This String is also empty")
}
if name.isEmpty { //This one is the fastest way to check if a String is empty. USE THIS.
    print("This String is empty. So fast.")
}

//Enums are ordered and can be compared
enum Sizes: Comparable { //Add Comparable so you can operate with this enum
    case small
    case medium
    case large
}

let first: Sizes = Sizes.small
let second: Sizes = Sizes.large
print(first < second) //True
