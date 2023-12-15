let weekDays = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
let months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

let today = weekDays[3] //Arrays first object is 0
print(today)
let thisMonth = months[11]
print(thisMonth)

let beatles = ["John", "Paul", "George", "Ringo"]
var speeds = [0.25, 0.5, 0.75, 1.0, 1.25, 1.5, 1.75, 2]
print(speeds)

//beatles.append("Adrian") //Cannot do this because beatles was defined as "let".
speeds.append(3.0) //Elements can be added, 1 by 1.
print(speeds)

var scores = Array<Int>() //Can create an empty array if you "select" the type of object is gonna store.
scores.append(0)
scores.append(1)
scores.append(3)
scores.append(0)
print(scores)

var albums = [String]() //Another way to create empty arrays
albums.append("Best of")
albums.append("Heavy Rain")
print(albums)

print(months.count) //Arrays also have some properties
print(albums.count)
//albums.remove(at: 2) //Cannot remove an element at a position that does not exist.
//print(albums.count)
albums.removeLast()
print(albums)
albums.removeAll()
print(albums)
albums.append("Best of")
albums.append("Heavy Rain")
albums.removeFirst()
print(albums)

print(beatles.sorted())
let reversedBeatles = beatles.reversed()
print(reversedBeatles)
