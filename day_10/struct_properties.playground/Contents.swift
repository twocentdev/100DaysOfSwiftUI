struct Employee {
    let name: String
    var vacationAllocated: Int = 14
    var vacationTaken: Int = 0
    
    var vacationRemaining: Int { //This property is calcullated dynamically. No actual value is stored in memory.
        get {
            vacationAllocated - vacationTaken //If no get or set is stablished, this line will work as get.
        }
        set { //How to handle set.
            vacationAllocated = vacationTaken + newValue
        }
    }
}

var archer = Employee(name: "Sterling Archer", vacationAllocated: 14)
archer.vacationTaken += 5
print(archer.vacationRemaining)
archer.vacationTaken += 3 //archer.vacationTaken == 8
print(archer.vacationRemaining)
print(archer.vacationAllocated) //14
archer.vacationRemaining = 10 //8 + 10
print(archer.vacationAllocated) //14
