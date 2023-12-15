let actors = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])
//You create a Set by passing an Array to its constructor.
//Sets do not allow to add repeated data.
print(actors)

var people = Set<String>() //This is how to create an empty Set.
people.insert("Denzel Washington") //This is how to add (INSERT) a new element into a Set. Do not use APPEND like with Arrays.
people.insert("Tom Cruise")
people.insert("Nicolas Cage")
people.insert("Samuel L Jackson")

people.contains("Denzel Washington") //This is how to check if an specific value is in the Set.
people.contains("Antonio Banderas")
people.count
print(people.sorted())
