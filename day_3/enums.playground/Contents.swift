enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}

enum Week { //This is the sort way to create an Enum.
    case monday, tuesday, wednesday, thursday, friday, saturday, sunday
}

var today = Weekday.monday
print(today)
today = Weekday.tuesday
print(today)

var thisDay = Week.monday
thisDay = .friday //When Enum was previously set, this is the sort way to reasign a value.
