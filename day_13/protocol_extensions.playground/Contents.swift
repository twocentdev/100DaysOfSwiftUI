let guests = ["Mario", "Luigi", "Peach"]

if !guests.isEmpty {
    print("Guest count: \(guests.count)")
}

extension Array { //In order to extend an existing protocol, just do it like classes and structs.
    
    var isNotEmpty: Bool {
        !self.isEmpty
    }
}

print(guests.isNotEmpty)

if guests.isNotEmpty {
    print("Guest count: \(guests.count)")
}

extension Collection { //Because all arrays, dictionaries and sets "implements" this protocol, you can do for all three at the same time.
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

let dict = [String: String]()
if dict.isNotEmpty {
    print("Dict count: \(dict.count)")
} else {
    print("dict is empty.")
}

let set = Set(guests)
if set.isNotEmpty {
    print("Set count: \(set.count)")
}

protocol Person {
    var name: String { get }
    func sayHello()
}

extension Person {
    func sayHello() {
        print("Hi, I'm \(name)")
    }
}

struct Employee: Person { //Because extension was done in a protocol, all structs that "implements" that protocol include the extended function as it was extended.
    let name: String
}

let taylor = Employee(name: "Taylor Swift")
taylor.sayHello()
