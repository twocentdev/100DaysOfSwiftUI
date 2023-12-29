func getUser() -> [String] { //You can use data structures (arrays, dict, sets, etc.) in order to return multiple values
    ["Taylor", "Swift"]
}
let user = getUser()
print("Name: \(user[0]) \(user[1])")

func getUserDict() -> [String: String] {
    [
        "firstName": "Taylor",
        "lastName": "Swift"
    ]
}
let userDict = getUserDict()
print("Name: \(userDict["firstName", default: "Anonymous"]) \(userDict["lastName", default: "Anonymous"])")

func getUserTuple() -> (firstName: String, lastName: String) { //Tuples allows you to create specific data structures (k, v).
    (firstName: "Taylor", lastName: "Swift")
    //("Taylor", "Swift") //You can set tuple values without fields name
}
let userTuple = getUserTuple()
print("Name: \(userTuple.firstName) \(userTuple.lastName)") //You access to tuple data by %VAR%.%FIELD%.
//You can also access tuple values like %TUPLE%.%ID_NUM% --> userTuple.0 or userTuple.1
