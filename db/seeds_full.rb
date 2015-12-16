# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
%w(and dna dan nda).each do |name|
  email = "#{name}@#{name}.com"
  next if User.exists? email: email
  User.create!(email: email, password: 'abc123',
               password_confirmation: 'abc123')
end

Boat.delete_all
Participant.delete_all

boat_list = [
  [ "Keepers Only", "High speed fishing boat out of Portland, ME.  Has been entered in over 20 fishing tournaments in the last three years.", "Captain Bullhead", 6, 6 ],
  [ "Small Fry", "Small but pesky boat otufitted for maximum fishing pleasure and other leisure time pleasires", "Captain Chum", 3, 3 ],
  [ "Big Fry", "Commissioned in 2002, this boat is a spitfire vessel the has latest and best fish finding gear.  Join us to find the spots where the fish are swarming.", "Captain Squid", 4, 4 ],
  [ "Hooked", "A large old-time fishing that first set sail 25 years ago.  An experienced crew that will help you land the biggest catch ever.", "Captain Bass" , 9, 9 ],
  [ "Blue Bayou", "This boat is a real pleasure to ride.  Whether you can the biggest fish or not there be no regrets when you set sail with us.", "Captain Trout", 8, 8 ]
]

boat_list.each do |title, description, captain, capacity, open_seats|
  Boat.create( title: title, description: description, captain: captain, capacity: capacity, open_seats: open_seats )
end


 participant_list = [
  [ "Will Turner", "aaa@gmail.com", "111-111-1111", "participant" ],
  [ "Elizabeth Swann", "bbb@gmail.com", "112-112-1112", "participant" ],
  [ "Governor Weatherby Swann", "ccc@gmail.com", "113-113-1113", "participant" ],
  [ "Tia Dalma", "ddd@gmail.com", "114-114-1114", "participant" ],
  [ "Cutler Beckett", "eee@gmail.com", "115-115-1115", "crew" ],
  [ "Ragetti", "fff@gmail.com", "116-116-1116", "participant" ],
  [ "Pintel", "ggg@gmail.com", "117-117-1117", "participant" ],
  [ "Bootstrap Bill Turner", "hhh@gmail.com", "119-119-1119", "participant" ],
  [ "Cotton", "iii@gmail.com", "121-121-1211", "participant" ],
  [ "Marty", "jjj@gmail.com", "122-122-1221", "participant" ],
  [ "Mercer", "kkk@gmail.com", "123-123-1231", "participant" ],
  [ "Scarlett", "lll@gmail.com", "124-124-1241", "crew" ],
  [ "Leech", "mmm@gmail.com", "125-125-1251", "participant" ],
  [ "Maccus", "nnn@gmail.com", "126-126-1261", "participant" ],
  [ "Koleniko", "ooo@gmail.com", "127-127-1271", "participant" ],
  [ "Shrimper", "qqq@gmail.com", "128-128-1281", "participant" ],
  [ "Wyvern", "rrr@gmail.com", "129-129-1291", "participant" ],
  [ "Palafico", "sss@gmail.com", "130-130-1301", "participant" ],
  [ "Jimmy Legs", "ttt@gmail.com", "131-131-1311", "participant" ],
  [ "Clacker", "uuu@gmail.com", "132-132-1321", "participant" ],
  [ "Ogilvey", "vvv@gmail.com", "133-133-1331", "participant" ],
  [ "Giselle", "xxx@gmail.com", "134-134-1341", "participant" ],
  [ "Sweepy", "yyy@gmail.com", "135-135-1351", "participant" ],
  [ "Ho-Kwan", "zzz@gmail.com", "136-136-1361", "participant" ],
  [ "Lejon", "aaaaa@gmail.com", "137-137-1371", "participant" ],
  [ "Jack Sparrow", "bbbbb@gmail.com", "138-138-1381", "crew" ],
  [ "Captain James Norrington", "ccccc@gmail.com", "139-139-1391", "crew" ],
  [ "Captain Davy Jones", "ddddd@gmail.com", "140-140-1401", "crew" ],
  [ "Joshamee Gibbs", "eeeee@gmail.com", "141-141-1411", "crew" ],
  [ "Captain Bellamy", "fffff@gmail.com", "142-142-1421", "crew" ]
]

p = Participant.create!(name: 'James Norrington', email: 'ccccc@gmail.com', phone: '139-139-1391', role: 'Captain')

movie = Movie.create!(name: 'Affliction', rating: 'R', desc: 'Little Dark', length: 123)
