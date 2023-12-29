enum PasswordError: Error { //Firstly define an error as an enum that extends from Error.
    case short, obvious
}

func checkPassword(_ password: String) throws -> String { //This function throws whatever error... remember to define it.
    if password.count < 5 {
        throw PasswordError.short //As any other language... no comments.
    }
    if password == "12345" {
        throw PasswordError.obvious
    }
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
}

let string = "12345"
do {
    let result = try checkPassword(string) //Try a function that might throw errors...
    print("Password rating: \(result)")
} catch PasswordError.short { //Just catch one single error, not all.
    print("Please use a longer password.")
} catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
} catch { //catch any other error that my have been throwed and was not catched before.
    print("There was an error.")
}
