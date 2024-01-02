class User {
    var username = "Anonymous"
    
    func copy() -> User { //If you really wanna make a copy of an object, no just of its pointer, use this kind of functions.
        let user = User()
        user.username = username
        return user
    }
}

var user1 = User()
var user2 = user1 //When you do this, you are really NOT making a copy of an object, you are just making a copy of the pointer to it. There is still only 1 object.
user2.username = "Taylor"

print(user1.username)

var user3 = user1.copy()
user3.username = "New user"
print(user1.username)
print(user2.username)
print(user3.username)

//Note: structs work in a different way. You can really copy a struct instance into a new var just like %STRUCT_COPY% = %OLD_STRUCT_VAR%
struct Car {
    var model: String
    
    init(model: String) {
        self.model = model
    }
}

var car1 = Car(model: "Tesla")
var car2 = car1
car2.model = "Ford"

print(car1.model)
print(car2.model) //See?? car2 is a different struct instance from car1.
