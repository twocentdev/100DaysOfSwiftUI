enum MathError: Error {
    case outOfBounds, noRoot
}

func integerSquareRoot (_ number: Int) throws -> Int {
    if (number <= 0 || number > 100) {
        throw MathError.outOfBounds
    } else {
        for i in 1...number {
            if (i * i == number) {
                return i
            } else if (i * i > number) {
                throw MathError.noRoot
            }
        }
        throw MathError.noRoot
    }
}

for i in 1...25 {
    do {
        let intSquareRoot = try integerSquareRoot(i)
        print("The integer square root for \(i) is \(intSquareRoot).")
    } catch MathError.outOfBounds {
        print("You cannot calculate the integer square root for the given number (\(i)).")
    } catch MathError.noRoot {
        print("There is no integer square root for the given number (\(i)).")
    }
}
