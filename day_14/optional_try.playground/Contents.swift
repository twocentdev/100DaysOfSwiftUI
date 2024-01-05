enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed //ALWAYS thrown
}

if let user = try? getUser(id: 23) { //Because I do not care about which error the function throws...
    print("User: \(user)") //This will never be printed because the function returns nil because of the error.
}

let user = (try? getUser(id: 288)) ?? "Unknown"
print(user)


//When to use optional try rather than try-catch...
//If you do not care about the error, more that it works or not, then use try?
//If you want to do something with the error, then use try-catch.
func runRiskyFunction() throws -> String { throw UserError.networkFailed }

do {
    let result = try runRiskyFunction()
    print(result)
} catch { //Here you can do something with the error.
    // it failed!
}

if let result = try? runRiskyFunction() { //I do not care about the error, only if it works or not.
    print(result)
}
