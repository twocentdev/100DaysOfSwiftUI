
let employee = [ //Dictionaries are k:v objects.
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]
print(employee)
print(employee["name"]) //You can access a dictionary value by its key.
print(employee["name", default: "Unknown"]) //This avoids the Optional return.

let isGraduated = [
    "Eric": false,
    "Maeve": true,
    "Otis": false
]

let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"
]
print(olympics[2012, default:"Unknown"])

var heights = [String: Int]() //You can create an empty dict by settint key and value types.
heights["Yao Ming"] = 229

var archEnemies = [String: String] ()
archEnemies["Batman"] = "The Joker"
print(archEnemies)
archEnemies["Batman"] = "Penguin" //You can overwrite a value in a dict.
print(archEnemies)

print(olympics.count) //Dictionaries also have some properties and functions, just like arrays.
