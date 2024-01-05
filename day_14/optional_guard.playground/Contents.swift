func printSquare(of number: Int?) {
    guard let number = number else { //Similar to if let
        print("Missing input")
        return
    }

    print("\(number) x \(number) is \(number * number)")
}

func letVsGuard() { //Guard INSIDE a FUNCTION. See later notes.
    var myVar: Int? = 3

    if let unwrapped = myVar {
        print("Run if myVar has a value inside")
    }

    guard let unwrapped = myVar else { //You can only use guard INSIDE a function, loop or condition because a return is required if check fails.
        print("Run if myVar doesn't have a value inside")
        return //This return is required in order to compile the code. That is the reason why guards need to be INSIDE a func, loop or condition.
    }
}

for _ in 1...3 { //Guard inside a LOOP.
    var myVar: Int? = 3
    
    guard let unwrapped = myVar else { //You can only use guard INSIDE a function, loop or condition because a return is required if check fails.
        print("Run if myVar doesn't have a value inside")
        break //This return is required in order to compile the code. That is the reason why guards need to be INSIDE a func, loop or condition.
    }
}

if true { //Guard inside a CONDITION.
    var myVar: Int? = 3
    
    guard let unwrapped = myVar else { //You can only use guard INSIDE a function, loop or condition because a return is required if check fails.
        print("Run if myVar doesn't have a value inside")
        exit(0) //This return is required in order to compile the code. That is the reason why guards need to be INSIDE a func, loop or condition.
    }
}

var myVar: Int? = 3
guard let unwrapped = myVar else { //You can only use guard INSIDE a function, loop or condition because a return is required if check fails.
    print("Run if myVar doesn't have a value inside")
    exit(0) //This return is required in order to compile the code. That is the reason why guards need to be INSIDE a func, loop or condition.
}

letVsGuard()
