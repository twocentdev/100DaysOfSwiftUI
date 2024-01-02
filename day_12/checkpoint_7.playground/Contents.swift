class Animal {
    let legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Cat: Animal { 
    
    let isTame: Bool
    
    init(isTame: Bool) {
        self.isTame = isTame
        super.init(legs: 4)
    }
    
    func speak() {
        print("This is a cat speaking.")
    }
}

class Dog: Animal { 
    
    init() {
        super.init(legs: 4)
    }
    
    func speak() {
        print("This is a dog speaking.")
    }
}

class Corgi: Dog { 
    
    override func speak() {
        print("This is a corgi speaking.")
    }
}

class Poodle: Dog { 
    
    override func speak() {
        print("This is a poodle speaking.")
    }
}

class Persian: Cat { 
    
    override func speak() {
        print("This is a persian cat speaking.")
    }
}

class Lion: Cat { 
    
    override func speak() {
        print("This is a lion speaking.")
    }
}

let animal = Animal(legs: 8)

let cat = Cat(isTame: true)
let persianCat = Persian(isTame: true)
let lion = Lion(isTame: false)

let dog = Dog()
let corgi = Corgi()
let poodle = Poodle()

//Now some "testing"
print("This animal has \(animal.legs) legs.")

cat.speak()
print("This is a cat that has \(cat.legs) legs.")
persianCat.speak()
print("This is a cat that has \(persianCat.legs) legs.")
lion.speak()
print("This is a cat that has \(lion.legs) legs.")

dog.speak()
print("This is a dog that has \(dog.legs) legs.")
corgi.speak()
print("This is a dog that has \(corgi.legs) legs.")
poodle.speak()
print("This is a dog that has \(poodle.legs) legs.")
