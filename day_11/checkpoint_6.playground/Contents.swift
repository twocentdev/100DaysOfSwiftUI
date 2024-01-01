struct Car {
    let model: String
    let numberOfSeats: Int
    let maximunGear: Int
    private (set) var currentGear:Int = 0
    
    init(model: String, numberOfSeats: Int, maximunGear: Int) {
        self.model = model
        self.numberOfSeats = numberOfSeats
        self.maximunGear = maximunGear
    }
    
    mutating func upGear() {
        if self.currentGear < self.maximunGear {
            currentGear += 1
        }
    }
    
    mutating func downGear() {
        if self.currentGear > 0 {
            self.currentGear -= 1
        }
    }
}

var myCar = Car(model: "Tesla", numberOfSeats: 5, maximunGear: 10)
print(myCar.model)
print(myCar.currentGear)
myCar.downGear()
print(myCar.currentGear)
for _ in 1...12 {
    myCar.upGear()
    print(myCar.currentGear)
}
