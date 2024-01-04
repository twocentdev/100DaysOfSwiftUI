protocol Building {
    var rooms: Int { get }
    var price: Int { get set }
    var agent: String { get set }
    var sales: String { get set } //Only used to save the sales history.
}

extension Building {
    func salesSummary() {
        print(self.sales)
    }
}

struct House: Building {
    let rooms: Int
    var price: Int
    var agent: String
    var sales: String = "No sales"
}

struct Office: Building {
    let rooms: Int
    var price: Int
    var agent: String
    var sales: String = "No sales"
}

var firstHouse = House(rooms: 4, price: 250000, agent: "John")
var secondHouse = House(rooms: 6, price: 460000, agent: "Taylor")
secondHouse.sales = "This house has been sold twice."

var office = Office(rooms: 250, price: 1800000, agent: "Chris")
office.sales = "This office has been sold several times. There have been at least five different companies in it."

firstHouse.salesSummary()
secondHouse.salesSummary()
office.salesSummary()
