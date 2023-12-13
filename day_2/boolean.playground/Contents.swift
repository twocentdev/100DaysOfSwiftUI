let filename = "paris.jpg"
print(filename.hasSuffix(".jpg")) //Some functions return Boolean values.

let number = 120
print(number.isMultiple(of: 3))

let goodDogs = true //How to define Boolean variables.
var gameOver = false

let isMultiple = 120.isMultiple(of: 3)
print(isMultiple)

var isAuthenticated = false
print(isAuthenticated)
isAuthenticated = !isAuthenticated //This is how you can turn a Boolean into its "negative"
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(isAuthenticated)

print(!gameOver)
print(gameOver)
gameOver.toggle() //This toogle function is the same as var = !var
print(gameOver)
