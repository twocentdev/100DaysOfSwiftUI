struct Car {
    let model: String
    let numberOfSeats: Int
    let maximunGear: Int
    private (set) var currentGear: Int = 0 {
        didSet {
            switch self.currentGear {
            case -1:
                print("Current gear is reverse.")
            case 0:
                print("Current gear is neutral.")
            default:
                print("Current gear is \(self.currentGear).")
            }
        }
    }
    
    init(model: String, numberOfSeats: Int, maximunGear: Int) {
        self.model = model
        self.numberOfSeats = numberOfSeats
        self.maximunGear = maximunGear
    }
    
    mutating func upGear() {
        if self.currentGear < self.maximunGear {
            currentGear += 1
        } else {
            print("There are no more gears to go up.")
        }
    }
    
    mutating func downGear() {
        if self.currentGear > 1 {
            self.currentGear -= 1
        } else {
            print("There are no more gears to go down.")
        }
    }
    
    mutating func reverseGear() {
        //Gear -1 is reverse
        self.currentGear = -1
    }
    
    mutating func neutralGear() {
        //Gear 0 is neutral
        self.currentGear = 0
    }
}

var myCar = Car(model: "Tesla", numberOfSeats: 5, maximunGear: 10)
print(myCar.model)
print(myCar.currentGear)
myCar.downGear()
for _ in 1...12 {
    myCar.upGear()
}
for _ in 1...15 {
    myCar.downGear()
}
myCar.neutralGear()
myCar.reverseGear()
