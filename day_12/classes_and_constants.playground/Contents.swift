class User {
    var name = "Paul"
}

var user = User()
print(user.name)
user.name = "Taylor"
print(user.name)
user = User()
print(user.name)

let user2 = User()
//user2 = User() //This does not work because user2 is a constant, but ONLY the pointer to the object. You can still change the values inside that object because they are vars.
user2.name = "Picolo"
print(user2.name)
