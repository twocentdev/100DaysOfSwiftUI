let albums: [String] = ["Queen", "Queen", "A Night at the Opera", "Innuendo", "Aftermath", "Black and Blue", "Black and Blue", "No Code", "Yield"]
let uniqueAlbums: Set<String> = Set(albums)

print("There are \(albums.count) albums, \(uniqueAlbums.count) of them are unique.") //There are 9 albums, 7 of them are unique.
