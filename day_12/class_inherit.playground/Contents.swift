class Employee {
    let hours: Int

    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() { //This is a function that can easily be overwrite in classes that inherit from this.
        print("I work \(hours) hours a day.")
    }
}

class Developer: Employee { //In this case you do not need to define a new initializer because this class inherits from Employee.
    func work() {
        print("I'm writing code for \(hours) hours.")
    }
    
    override func printSummary() { //This is how to overwrite a function. See @Overwrite in Java.
        print("I'm a developer who will sometimes work \(hours) hours a day, but other times spend hours arguing about whether code should be indented using tabs or spaces.")
    }
}

class Manager: Employee {
    func work() {
        print("I'm going to meetings for \(hours) hours.")
    }
}

let worker = Developer(hours: 8)
let boss = Manager(hours: 6)

worker.work()
boss.work()
worker.printSummary()
boss.work()

final class Wheel { //Adding FINAL to this class blocks you to inherit from it.
    let mmPerInch: Double = 25.4
    let pi: Double = 3.14
    
    let radius: Double
    let height: Double
    let weight: Double
    
    init(radius: Int, height: Int, weight: Int) {
        self.radius = Double(radius)
        self.height = Double(height)
        self.weight = Double(weight)
    }
    
    func getRadius() -> Double {
        return self.mmPerInch * self.radius + (self.weight * self.height / 100.0)
    }
    
    func getLength() -> Double {
        return 2.0 * pi * self.getRadius()
    }
}

//class OtherWheel: Wheel {} //This does not work because Wheel is a "final" class.
