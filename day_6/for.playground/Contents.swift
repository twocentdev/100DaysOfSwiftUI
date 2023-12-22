let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms { //foreach
    print("Swift works great on \(os).")
}

for i in 1...5 { //a...b creates a list of elements from a to b [a, b]. See range() for more details.
    print("5 times \(i) is \(5 * i)") //1, 2, 3, 4, 5
}

for i in 1..<5 { //a..<b creates a list of elements from a to b that does not include b [a, b)
    print("5 times \(i) is \(5 * i)") //1, 2, 3, 4
}

var lyric = "Haters gonna"

for _ in 1...5 { //if you do not need the iterator variable you can define as _.
    lyric += " hate"
}
