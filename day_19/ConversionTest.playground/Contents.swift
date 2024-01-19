struct TemperatureTransformer {
    static let TemperatureUnits = ["Celsius", "Fahrenheit", "Kelvin"]
    
    static func transform(_ temperature: Double, from: String, to: String) -> Double {
        switch from {
        case TemperatureUnits[0]:
            switch to {
            case TemperatureUnits[0]:
                return temperature
            case TemperatureUnits[1]:
                return celsiusToFahrenheit(temperature)
            case TemperatureUnits[2]:
                return celsiusToKelvin(temperature)
            default:
                return temperature
            }
        case TemperatureUnits[1]:
            let celsius = fahrenheitToCelsius(temperature)
            return transform(celsius, from: TemperatureUnits[0], to: to)
        case TemperatureUnits[2]:
            let celsius = kelvinToCelsius(temperature)
            return transform(celsius, from: TemperatureUnits[0], to: to)
        default:
            return temperature
        }
    }
    
    static func celsiusToFahrenheit (_ temperature: Double) -> Double {
        return temperature * 1.8 + 32.0
    }
    
    static func celsiusToKelvin (_ temperature: Double) -> Double {
        return temperature + 273.15
    }
    
    static func fahrenheitToCelsius (_ temperature: Double) -> Double {
        return (temperature - 32) / 1.8
    }
    
    static func kelvinToCelsius (_ temperature: Double) -> Double {
        return temperature - 273.15
    }
}

let units = TemperatureTransformer.TemperatureUnits

let temperatureCC = 100.0
print("\(temperatureCC) Celsius is \(TemperatureTransformer.transform(temperatureCC, from: units[0], to: units[0])) Celsius")
let temperatureCF = 0.0
print("\(temperatureCF) Celsius is \(TemperatureTransformer.transform(temperatureCF, from: units[0], to: units[1])) Fahrenheit")
let temperatureCK = 1.0
print("\(temperatureCK) Celsius is \(TemperatureTransformer.transform(temperatureCK, from: units[0], to: units[2])) Kelvin")
let temperatureFC = 32.0
print("\(temperatureFC) Fahrenheit is \(TemperatureTransformer.transform(temperatureFC, from: units[1], to: units[0])) Celsius")
let temperatureFF = 0.0
print("\(temperatureFF) Fahrenheit is \(TemperatureTransformer.transform(temperatureFF, from: units[1], to: units[1])) Fahrenheit")
let temperatureFK = 32.0
print("\(temperatureFK) Fahrenheit is \(TemperatureTransformer.transform(temperatureFK, from: units[1], to: units[2])) Kelvin")
let temperatureKC = 274.15
print("\(temperatureKC) Kelvin is \(TemperatureTransformer.transform(temperatureKC, from: units[2], to: units[0])) Celsius")
let temperatureKF = 273.15
print("\(temperatureKF) Kelvin is \(TemperatureTransformer.transform(temperatureKF, from: units[2], to: units[1])) Fahrenheit")
let temperatureKK = 274.0
print("\(temperatureKK) Kelvin is \(TemperatureTransformer.transform(temperatureKK, from: units[2], to: units[2])) Kelvin")
