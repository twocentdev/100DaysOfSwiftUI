// (1)
let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

//The last one, I promise. Without closures (2)
func checkpoint5 (numbers: [Int]) {
    for elem in numbers.sorted() {
        if !elem.isMultiple(of: 2) {
            print("\(elem) is a luck number")
        }
    }
}
checkpoint5(numbers: luckyNumbers)

//"Standar" version (3)
let oddNumbers = luckyNumbers.filter { !$0.isMultiple(of: 2)}
let sortedNumbers = oddNumbers.sorted()
let messages = sortedNumbers.map {"\($0) is a lucky number"}

for message in messages {
    print(message)
}
//7 is a lucky number
//15 is a lucky number
//21 is a lucky number
//31 is a lucky number
//33 is a lucky number
//49 is a lucky number

//"Short" version (4)
let finalNumbers = luckyNumbers.filter { !$0.isMultiple(of: 2)}
    .sorted()
    .map {"\($0) is a lucky number"}

for number in finalNumbers {
    print(number)
}

//Even shorter (5)
for i in (
    luckyNumbers.filter { !$0.isMultiple(of: 2)}
        .sorted()
        .map {"\($0) is a lucky number"}) {
    print(i)
}

//And without "logs" (6)
func run (numbers: [Int],
    first: (_ elem: Int) -> Bool,
    second: (_ elem: [Int]) -> [Int],
    third: (_ elem: Int) -> String,
    fourth: (_ elem: String) -> Void
    ) -> Void {
    var filteredNumbers = [Int]()
    for elem in numbers {
        if first(elem) {
            filteredNumbers.append(elem)
        }
    }
    let orderedNumbers = second(filteredNumbers)
    var messages = [String]()
    for elem in orderedNumbers {
        messages.append(third(elem))
    }
    for msg in messages {
        fourth(msg)
    }
}

run(numbers: luckyNumbers) {
    !$0.isMultiple(of: 2)
} second: {
    $0.sorted()
} third: {
    "\($0) is a lucky number"
} fourth: {
    print($0)
}

//"Ultimate" way (7)
func _run (numbers: [Int],
    first: (_ elem: Int) -> Bool,
    second: (_ elem: [Int]) -> [Int],
    third: (_ elem: Int) -> String,
    fourth: (_ elem: String) -> Void
    ) -> Void {
    print("About to filter elements")
    var filteredNumbers = [Int]()
    for elem in numbers {
        print("About to filter \(elem)")
        if first(elem) {
            print("Elem \(elem) is odd.")
            filteredNumbers.append(elem)
        }
    }
    print("About to order filtered numbers \(filteredNumbers)")
    let orderedNumbers = second(filteredNumbers)
    print("Numbers have been ordered \(orderedNumbers)")
    print("About to map elements into messages")
    var messages = [String]()
    for elem in orderedNumbers {
        print("About to map elem \(elem)")
        messages.append(third(elem))
    }
    print("Messages have been mapped \(messages)")
    print("About to print messages, one by one")
    for msg in messages {
        fourth(msg)
    }
    print("Job done!")
}

_run(numbers: luckyNumbers) {
    !$0.isMultiple(of: 2)
} second: {
    $0.sorted()
} third: {
    "\($0) is a lucky number"
} fourth: {
    print($0)
}

//Now the tweets.
//1.- First things first, here are some 'possible' lucky numbers.
//2.- And here is the easyest way to make this done.
//3.- + But you where supposed to use come closures. - Ok, so here it is.
//4.- + Too much constants. - What about this?
//5.- Can do it even shorter.
//6.- + But you where supposed to use closures into a larger function. - (EMOJI LEVANTANDO CEJA)
//7.- + Now I am lost. - What about some 'logs'?
