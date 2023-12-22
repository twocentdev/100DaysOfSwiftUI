let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue //This allows to avoid the rest of the loop body and start a new iteration
    }

    print("Found picture: \(filename)")
}

for i in 1...5 {
    if i % 2 == 0 {
        continue
    }
    print(i) //1, 3, 5
}

let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)

        if multiples.count == 10 {
            break //Similar to coninue, this ends all remaining iterations for the loop.
        }
    }
}
print(multiples)

for i in 1...5 {
    if i % 3 == 0 {
        continue
    }
    print(i) //1, 2
}

let options = ["up", "down", "left", "right"]
let secretCombination = ["up", "up", "right"]

for option1 in options {
    //This allows to check all possible combinations of three (3) movements to find the correct one.
    //Unfortunately loops keep running AFTER finding the correct combination.
    for option2 in options {
        for option3 in options {
            print("In loop")
            let attempt = [option1, option2, option3]

            if attempt == secretCombination {
                print("The combination is \(attempt)!")
            }
        }
    }
}

outerLoop: for option1 in options { //In order to break all loops at once you can label a statement
    for option2 in options {
        for option3 in options {
            print("In loop")
            let attempt = [option1, option2, option3]

            if attempt == secretCombination {
                print("The combination is \(attempt)!")
                break outerLoop //This allows you to break the labeled loop.
            }
        }
    }
}
