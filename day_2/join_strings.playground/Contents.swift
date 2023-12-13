let firstPart = "Hello, "
let secondPart = "world!"
let greeting = firstPart + secondPart //First way to concat strings. Addind them.
print(greeting)

let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action //It is not required to define strings BEFORE adding them.
print(lyric)

let name = "Taylor"
let age = 26
let message = "Hello, my name is \(name) and I'm \(age) years old." //This way, interpolation, is better. Just use \(%VARIABLE%).
print(message)

let number = 11
//let missionMessage1 = "Apollo " + number + " landed on the moon." //This fails because no implicit conversion is done.
let missionMessage1  = "Apollo " + String(number) + " landed on the moon." //Use explicit cast when adding Strings.
let missionMessage2 = "Apollo \(number) landed on the moon." //No explicit cast required when using interpolation.

print("5 * 5 is \(5 * 5)") //You can also make some operations inside interpolation.
