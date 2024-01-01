struct BankAccount {
    private(set) var _funds = 0 //Private property, nothing else to say.
    //You can add (set) in order to allow to read this property from outside, like if it was public, but not to set.
    //Other options are public and fileprivate.

    mutating func deposit(amount: Int) {
        _funds += amount
    }

    mutating func withdraw(amount: Int) -> Bool {
        if _funds >= amount {
            _funds -= amount
            return true
        } else {
            return false
        }
    }
}

var account = BankAccount()
account.deposit(amount: 1000)
let success = account.withdraw(amount: 200)

if success {
    print("Withdrew money successfully")
} else {
    print("Failed to get the money")
}
print(account._funds)
