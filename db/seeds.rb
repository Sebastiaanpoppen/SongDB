Song.delete_all
Artist.delete_all

artist1 = Artist.create(name:"The Doors")
artist2 = Artist.create(name:"The Cat Empire")
artist3 = Artist.create(name:"Xavier Rudd")
artist4 = Artist.create(name:"Röyksopp")
artist5 = Artist.create(name:"Queens of the Stoneage")

song1 = Song.create(name: "Back door Man", artist: artist1)
song2 = Song.create(name: "The Sun", artist: artist2)
song3 = Song.create(name: "Set it up", artist: artist3)
song4 = Song.create(name: "The Alcoholic", artist: artist4)
song5 = Song.create(name: "Another Love Song", artist: artist5)
