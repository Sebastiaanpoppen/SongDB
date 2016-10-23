Photo.delete_all
Song.delete_all
Artist.delete_all



photo1 = Photo.create(remote_image_url: "http://res.cloudinary.com/sebastiaanpoppen/image/upload/v1477208763/Doors_Venice_ismxfa.jpg")
photo2 = Photo.create(remote_image_url: "http://res.cloudinary.com/sebastiaanpoppen/image/upload/v1477208763/the-cat-empire_llboui.jpg")
photo3 = Photo.create(remote_image_url: "http://res.cloudinary.com/sebastiaanpoppen/image/upload/v1477208763/1449512977150_cqd3yk.jpg")
photo4 = Photo.create(remote_image_url: "http://res.cloudinary.com/sebastiaanpoppen/image/upload/v1477208763/32_Royksopp-_tdmxxi.jpg")
photo5 = Photo.create(remote_image_url: "http://res.cloudinary.com/sebastiaanpoppen/image/upload/v1477208763/QOTSA_mg_5853_mddin7.jpg")

artist1 = Artist.create(name:"The Doors", photos: [photo1])
artist2 = Artist.create(name:"The Cat Empire", photos: [photo2])
artist3 = Artist.create(name:"Xavier Rudd", photos: [photo3])
artist4 = Artist.create(name:"Röyksopp", photos: [photo4])
artist5 = Artist.create(name:"Queens of the Stoneage", photos: [photo5])

song1 = Song.create(name: "Back door Man", artist: artist1)
song2 = Song.create(name: "The Sun", artist: artist2)
song3 = Song.create(name: "Set it up", artist: artist3)
song4 = Song.create(name: "The Alcoholic", artist: artist4)
song5 = Song.create(name: "Another Love Song", artist: artist5)
