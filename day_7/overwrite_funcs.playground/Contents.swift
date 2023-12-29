func hireEmployee(name: String) { } //You can overwrite a function if params are "different".
func hireEmployee(title: String) { }
func hireEmployee(location: String) { }

func isUppercase(_ string: String) -> Bool { //You can avoid to require the param name by using '_' before it.
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result = isUppercase(string) //No param name needed.

func printTimesTables(for number: Int) { //Similar to previous, you can set two (2) names to the same param.
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5)
