for i in 1...100 {
    if i.isMultiple(of:3) && i.isMultiple(of:5) {
        print("FizzBuzz")
        continue
    }
    if i.isMultiple(of:5) {
        print("Buzz")
        continue
    }
    if i.isMultiple(of:3) {
        print("Fizz")
        continue
    }
    print(i)
}

for i in 1...100 {
    if i % 3 == 0 && i % 5 == 0 {
        print("FizzBuzz")
        continue
    }
    if i % 5 == 0 {
        print("Buzz")
        continue
    }
    if i % 3 == 0 {
        print("Fizz")
        continue
    }
    print(i)
}

for i in 1...100 {
    if i.isMultiple(of:3) && i.isMultiple(of:5) {
        print("FizzBuzz")
    } else if i.isMultiple(of:5) {
        print("Buzz")
    } else if i.isMultiple(of:3) {
        print("Fizz")
    } else {
        print(i)
    }
}

for i in 1...100 {
    if i.isMultiple(of: 3) {
        if i.isMultiple(of: 5) {
            print("FizzBuzz")
        } else {
            print("Fizz")
        }
    } else if i.isMultiple(of: 5) {
        print("Buzz")
    } else {
        print(i)
    }
}
