let captains = [
    "Enterprise": "Picard",
    "Voyager": "Janeway",
    "Defiant": "Sisko"
]

//let new = captains["Serenity"] //No value will be returned.
let new = captains["Serenity"] ?? "N/A" //Nil coalescing add a default value if nil was found.
let _new = captains["Serenity", default: "N/A"] //They produce the same result, so... why is nil coalescing necessary??

let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None" //Because some times you cannot use "default: N/A"...

struct Book {
    let title: String
    let author: String?
}

let book = Book(title: "Beowulf", author: nil)
let author = book.author ?? "Anonymous" //You can also use when there is a struct with an optional value.
print(author)

let input = ""
let number = Int(input) ?? 0 //You can also use it when trying to cast a String into an Int...
print(number)

//Trick... you can add more than one of this nil coalescing.
func first() -> String? { nil }
func second() -> String? { nil }

let savedData = first() ?? second() ?? "EMPTY"
print(savedData)
