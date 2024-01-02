class Vehicle {
    
    let model: String
    
    init(model: String) {
        self.model = model
    }
}

class ElectricVehicle: Vehicle {
    
    let isElectric: Bool = true
}

class Convertible: Vehicle {
    
    let isConvertible: Bool = true
}

class Car: Vehicle {
    
    let isElectric: Bool
    let isConvertible: Bool
    
    init(isElectric: Bool, isConvertible: Bool, model: String) {
        self.isElectric = isElectric
        self.isConvertible = isConvertible
        super.init(model: model) //Just use SUPER to call a method of the "parent" class.
    }
}

let vehicle = Vehicle(model: "Prototype X")
let tesla = Car(isElectric: true, isConvertible: false, model: "Model Z")

print(vehicle.model)
print(tesla.model)
print(tesla.isElectric)
