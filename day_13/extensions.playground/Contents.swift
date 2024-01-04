import Cocoa //You may need this for .whitespacesAndNewlines

var quote = "   The truth is rarely pure and never simple   "
print(quote)

let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines) //If you need to do this so much, it will turn boring and large.
print(trimmed)

extension String { //This is an extension. A piece of code that allows to include more code (God saves the donkey) into previous one.
    
    var lines: [String] { //If you use extensions to add more properties to a class or struct, you are only allowed to add computed properties (See #Day10).
        self.components(separatedBy: .newlines)
    }
    
    func trimmed() -> String { //This function returns a copy of the String. But the original has not been modified.
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    
    mutating func trim() { //With this you can apply directly to the String itself.
        self = self.trimmed()
    }
}

let _trimmed = quote.trimmed() //See, it's much easier.
print(_trimmed)
print(quote) //See?? The original is still here.
quote.trim()
print(quote) //Now quote has changed.

func trim(_ string: String) -> String { //This works just like the previous extension.
    string.trimmingCharacters(in: .whitespacesAndNewlines)
}
let __trimmed = trim(quote) //We could have done this, a global function. But doing it in the OOP is much cooler.

//About to test the computed property added in the extension (lines).
let lyrics = """
But I keep cruising
Can't stop, won't stop moving
It's like I got this music in my mind
Saying it's gonna be alright
"""
for line in lyrics.lines {
    //print("One line each time.")
    print(line)
}

//Last but not least. Using extensions to keep default struct initializer
struct Book {
    let title: String
    let pageCount: Int
    let readingHours: Int
}


extension Book {
    
    init(title: String, pageCount: Int) {
            self.title = title
            self.pageCount = pageCount
            self.readingHours = pageCount / 50
        }
}

let lotr = Book(title: "Lord of the Rings", pageCount: 1178, readingHours: 24) //See?? The default initializer still works.

let harry = Book(title: "Harry Potter and the Sorcerer's stone", pageCount: 309)
print(harry.readingHours)
