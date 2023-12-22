var countdown = 10

while countdown > 0 { //This loops is executed while the condition is true. Ten (10) times in this example.
    print("\(countdown)…")
    countdown -= 1
}

print("Blast off!")

// create an integer to store our roll
var roll = 0

// carry on looping until we reach 20
while roll != 20 {
    // roll a new dice and print what it was
    roll = Int.random(in: 1...20) //This is how to random create an Int.
    print("I rolled a \(roll)")
}

// if we're here it means the loop ended – we got a 20!
print("Critical hit!")
