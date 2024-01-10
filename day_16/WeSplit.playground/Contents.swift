struct Bill {
    let people: Int
    let tip: Int
    
    var orders = [String: Double] () {
        didSet {
            subTotal = 0
            for e in orders {
                print("New order (\(e.key)) has been aded to the bill \(e.value).")
                subTotal += e.value
            }
        }
    }
    
    private (set) var subTotal: Double = 0 {
        didSet {
            print("Order is: \(self.subTotal)")
            total = subTotal + (subTotal * Double(tip) / 100)
        }
    }
    private (set) var total: Double = 0 {
        didSet {
            print("Total is now: \(self.total). Each one of the \(self.people) people will pay \(self.total / Double(self.people))")
        }
    }
}

let _orders = [
    "Fideos": 4.95,
    "Pollo": 5.95
]
print(_orders)

var bill = Bill(people: 5, tip: 10)
bill.orders = _orders

bill.orders["Tallarines"] = 7.35
print(bill.orders)
