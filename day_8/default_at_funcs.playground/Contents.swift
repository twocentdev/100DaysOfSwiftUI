func printTimesTables(for number: Int, end: Int = 12) { //Just set a value for an input param to make it optional.
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)
printTimesTables(for: 8) //It is not require to include params if they are optional.
