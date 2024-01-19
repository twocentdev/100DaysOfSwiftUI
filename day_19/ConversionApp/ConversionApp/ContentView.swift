import SwiftUI

struct ContentView: View {
    @FocusState private var inputIsFocused: Bool
    
    @State private var from: Double = 0.0
    @State private var fromUnit: String = TemperatureTransformer.TemperatureUnits[0]
    @State private var toUnit: String = TemperatureTransformer.TemperatureUnits[0]
    
    private var to: Double {
        TemperatureTransformer.transform(from, from: fromUnit, to: toUnit)
    }
    
    var body: some View {
        NavigationStack {
            Form {
                Section ("Temperature"){
                    TextField("Temperature in", value: $from, format: .number)
                        .keyboardType(.decimalPad)
                        .focused($inputIsFocused)
                    Picker ("Temperature unit", selection: $fromUnit) {
                        ForEach (TemperatureTransformer.TemperatureUnits, id: \.self) {
                            Text(String($0))
                        }
                    }
                    .pickerStyle(.segmented)
                }
                    Section ("Result"){
                    Picker ("Temperature unit", selection: $toUnit) {
                        ForEach (TemperatureTransformer.TemperatureUnits, id: \.self) {
                            Text(String($0))
                        }
                    }
                    .pickerStyle(.segmented)
                    Text(to, format: .number)
                }
            }
            .navigationTitle("Temperature converter")
            .toolbar {
                if inputIsFocused {
                    Button("Done") {
                        inputIsFocused = false
                    }
                }
            }
        }
    }
}

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

#Preview {
    ContentView()
}
