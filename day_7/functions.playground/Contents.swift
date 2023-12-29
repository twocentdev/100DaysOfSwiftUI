func welcome() { //This is how to define a function in swift. The code will not be executed until the function is called.
    print("Welcome to my app!")
    print("Feel free to use this app as much as needed.")
    print("Hope you enjoy the experience.")
}
welcome() //This is how to call a function.

func isEven(value: Int) {
    if value.isMultiple(of: 2) {
        print("true")
    } else {
        print("false")
    }
}
print("Is 2 even:")
isEven(value: 2) //This is how to call a function with params.
print("Is 3 even:")
isEven(value: 3)

func sum(a: Int, b: Int) { //You can add MULTIPLE input params to a function.
    print(a + b)
}
sum(a: 2, b: 3) //Params should be writen in the same order that were defined.
