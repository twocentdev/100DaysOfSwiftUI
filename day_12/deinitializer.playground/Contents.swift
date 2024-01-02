class User {
    let id: Int

    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }

    deinit {
        print("User \(id): I'm dead!")
    }
}

for i in 1...5 {
    let newUser = User(id: i)
    print(newUser.id)
}

var users = [User]()
for i in 1...5 {
    let user = User(id: i)
    print("I'm user \(user.id) and I'm in control.")
    users.append(user)
}

print("Loop has ended.")
users.removeAll()
print("Users array is now empty.")
