enum TemperatureUnits {
    case celsius, fahrenheit, kelvin
}

struct TemperatureTransformer {
    var from: TemperatureUnits
    var to: TemperatureUnits
    
    mutating func transform(_ temperature: Double) -> Double {
        switch from {
        case .celsius:
            switch to {
            case .celsius:
                return temperature
            case .fahrenheit:
                return celsiusToFahrenheit(temperature)
            case .kelvin:
                return celsiusToKelvin(temperature)
            }
        case .fahrenheit:
            let celsius = fahrenheitToCelsius(temperature)
            self.from = .celsius
            return transform(celsius)
        case .kelvin:
            let celsius = kelvinToCelsius(temperature)
            self.from = .celsius
            return transform(celsius)
        }
    }
    
    func celsiusToFahrenheit (_ temperature: Double) -> Double {
        return temperature * 1.8 + 32.0
    }
    
    func celsiusToKelvin (_ temperature: Double) -> Double {
        return temperature + 273.15
    }
    
    func fahrenheitToCelsius (_ temperature: Double) -> Double {
        return (temperature - 32) / 1.8
    }
    
    func kelvinToCelsius (_ temperature: Double) -> Double {
        return temperature - 273.15
    }
}

var transformerCC = TemperatureTransformer(from: .celsius, to: .celsius)
let temperatureCC = 100.0
print("\(temperatureCC) Celsius is \(transformerCC.transform(temperatureCC)) Celsius")

var transformerCF = TemperatureTransformer(from: .celsius, to: .fahrenheit)
let temperatureCF = 0.0
print("\(temperatureCF) Celsius is \(transformerCF.transform(temperatureCF)) Fahrenheit")

var transformerCK = TemperatureTransformer(from: .celsius, to: .kelvin)
let temperatureCK = 1.0
print("\(temperatureCK) Celsius is \(transformerCK.transform(temperatureCK)) Kelvin")

var transformerFC = TemperatureTransformer(from: .fahrenheit, to: .celsius)
let temperatureFC = 32.0
print("\(temperatureFC) Fahrenheit is \(transformerFC.transform(temperatureFC)) Celsius")

var transformerFF = TemperatureTransformer(from: .fahrenheit, to: .fahrenheit)
let temperatureFF = 0.0
print("\(temperatureFF) Fahrenheit is \(transformerFF.transform(temperatureFF)) Fahrenheit")

var transformerFK = TemperatureTransformer(from: .fahrenheit, to: .kelvin)
let temperatureFK = 32.0
print("\(temperatureFK) Fahrenheit is \(transformerFK.transform(temperatureFK)) Kelvin")

var transformerKC = TemperatureTransformer(from: .kelvin, to: .celsius)
let temperatureKC = 274.15
print("\(temperatureKC) Kelvin is \(transformerKC.transform(temperatureKC)) Celsius")

var transformerKF = TemperatureTransformer(from: .kelvin, to: .fahrenheit)
let temperatureKF = 273.15
print("\(temperatureKF) Kelvin is \(transformerKF.transform(temperatureKF)) Fahrenheit")

var transformerKK = TemperatureTransformer (from: .kelvin, to: .kelvin)
let temperatureKK = 274.0
print("\(temperatureKK) Kelvin is \(transformerKK.transform(temperatureKK)) Kelvin")
