struct School {
    static var studentCount = 0 //Static functions and methods do not require to create an instance of this struct.

    static func add(student: String) { //No mutatin is required.
        print("\(student) joined the school.")
        studentCount += 1
    }
}

print(School.studentCount)
School.add(student: "Taylor Swift")
print(School.studentCount)


struct Circle {
    static let pi = 3.14
    let radius: Double
    
    func getArea() -> Double {
        return Circle.pi * radius * radius //In order to access a static property from a non-static method use STRUCT.STATIC_PROPERTY.
    }
    
    func getLength() -> Double {
        return 2.0 * Circle.pi * radius
    }
}

let circle = Circle(radius: 3.0)
print(circle.radius)
print(Circle.pi)
print(circle.getArea())
print(circle.getLength())
