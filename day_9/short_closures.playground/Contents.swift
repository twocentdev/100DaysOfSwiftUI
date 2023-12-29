let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"] //From previous tutorial
var captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    let captain = "Suzanne"
    if name1 == captain {
        return true
    } else  if name2 == captain {
        return false
    }
    return name1 < name2
})
print(captainFirstTeam) //Suzanne, Gloria, Piper, Tasha, Tiffany

//Here are some short ways to do the same.
captainFirstTeam = team.sorted(by: { name1, name2 in //Because Swift knows that sorted accepts a function like (String, String) -> Bool, you can use this 'short' way.
    let captain = "Suzanne"
    if name1 == captain {
        return true
    } else  if name2 == captain {
        return false
    }
    return name1 < name2
})

captainFirstTeam = team.sorted { name1, name2 in //Even shorter.
    let captain = "Suzanne"
    if name1 == captain {
        return true
    } else  if name2 == captain {
        return false
    }
    return name1 < name2
}

captainFirstTeam = team.sorted {//Even shorter, again. Now you can substitute params like $NUM.
    let captain = "Suzanne"
    if $0 == captain {
        return true
    } else  if $1 == captain {
        return false
    }
    return $0 < $1 //name1 is $0 and name2 is $1.
}

var reverseTeam = team.sorted {
    return $0 > $1
}
print(reverseTeam) //Tiffany, Tasha, Suzanne, Piper, Gloria

reverseTeam = team.sorted{ $0 > $1 } //Because there is only 1 line... no return is needed.

//Another few examples to show why closures are important.
let tOnly = team.filter { $0.hasPrefix("T")}
print(tOnly) //Tiffany, Tasha

let uppercaseTeam = team.map { $0.uppercased() }
print(uppercaseTeam) //GLORIA, SUZANNE, PIPER, TIFFANY, TASHA
