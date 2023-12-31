struct Employee {
    let name: String
    var vacationAllocated: Int = 14
    var vacationTaken: Int = 0
    
    var vacationRemaining: Int { //This property is calcullated dynamically. No actual value is stored in memory.
        //Note for computed (dynamically calculated) properties: type MUST be explicitlly defined.
        //Other note: you CANNOT use this computed properties for constants (let).
        get {
            vacationAllocated - vacationTaken //If no get or set is stablished, this line will work as get.
            //As seen on closures, return is ONLY required if there is more than 1 line of code.
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
