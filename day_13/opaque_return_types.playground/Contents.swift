func _getRandomNumber() -> Int {
    Int.random(in: 1...6)
}

func _getRandomBool() -> Bool {
    Bool.random()
}

//This code will not work because the structs or classes that "implements" the protocol Equatable are not interchangeable.
//The key is why is this??
//Well, both Int and Bool "implements" Equatable in order to allow == operation. But you cannot do Int == Bool... because it does not work like that.
//So you can only do Int == Int or Bool == Bool...
//func getRandomNumber() -> Equatable {
//    Int.random(in: 1...6)
//}
//
//func getRandomBool() -> Equatable {
//    Bool.random()
//}

func getRandomNumber() -> some Equatable { //By adding this "some" you are telling swift (here will come an expecific struct or class that "implements" Equatable, will see later).
    Int.random(in: 1...6)
}

func getRandomBool() -> some Equatable {
    Bool.random()
}

//According to swift docs, opaque return types are used to not show some details about how a function has been implemented, mainly a returning type.
//For more information read this article(s):
//1.- https://www.hackingwithswift.com/articles/187/how-to-use-opaque-return-types-in-swift-5-1
//2.- https://github.com/apple/swift-evolution/blob/main/proposals/0244-opaque-result-types.md
//3.- https://docs.swift.org/swift-book/documentation/the-swift-programming-language/opaquetypes/
//4.- https://swiftbysundell.com/articles/opaque-return-types-in-swift/

//Final summary: opaque return types offers two (2) things:
//1.- "Tell" the compiler the type of data a function is returning.
//2.- Hidding to whoever is gonna call that function the exact type it's returning rather than a protocol. Because the real type may be so "complex" to understand or work with.
