class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10

class Wheel {
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

let wheel = Wheel(radius: 21, height: 90, weight: 90)
print(wheel.getRadius())
print(wheel.getLength())
