Participant.delete_all
Boat.delete_all
Team.delete_all

boat_list = [
  [ "Catchin' Only Keepers", "High speed fishing boat out of Portland, ME.  Has been entered in over 20 fishing tournaments in the last three years.", 6, 6 ],
  [ "Hooked", "Small but pesky boat otufitted for maximum fishing pleasure and other leisure time pleasires", 3, 3 ],
  [ "Need a Bigger Boat", "Commissioned in 2002, this boat is a spitfire vessel the has latest and best fish finding gear.  Join us to find the spots where the fish are swarming.", 4, 4 ],
  [ "Trawlin'", "A large old-time fishing that first set sail 25 years ago.  An experienced crew that will help you land the biggest catch ever.", 9, 9 ],
  [ "Blue Bayou", "This boat is a real pleasure to ride.  Whether you can the biggest fish or not there be no regrets when you set sail with us.", 8, 8 ]
]

boat_list.each do |title, description, capacity, open_seats|
  Boat.create!( title: title, description: description, capacity: capacity, open_seats: open_seats )
end

team_list = [ "The Big Catch",  "Small Fry" , "Picikled Smelt", "Jumpin' Catfish" , "Big Fry" , "Precious Few", "All ABout The Bass" , "Big Fry" ]

team_list.each do |team_name|
  Team.create!( team_name: team_name )
end

catch_team = Team.find_by_team_name('The Big Catch')
hooked_boat = Boat.find_by_title('Hooked')

small_team = Team.find_by_team_name('Small Fry')
blue_boat = Boat.find_by_title('Blue Bayou')

hooked_boat.participants.create!(team: catch_team, name: 'Will Turner', email: 'aaa@gmail.com', phone: '111-111-1111', role: 'participant')

#   participant_list = [
#   [ "Will Turner", "aaa@gmail.com", "111-111-1111", "participant", 1, 1 ],
#   [ "Elizabeth Swann", "bbb@gmail.com", "112-112-1112", "participant", 1, 1 ],
#   [ "Governor Weatherby Swann", "ccc@gmail.com", "113-113-1113", "participant", 1, 1 ],
#   [ "Tia Dalma", "ddd@gmail.com", "114-114-1114", "participant", 1, 1 ],
#   [ "Cutler Beckett", "eee@gmail.com", "115-115-1115", "crew", 2, 1 ],
#   [ "Ragetti", "fff@gmail.com", "116-116-1116", "participant", 2, 2  ],
#   [ "Pintel", "ggg@gmail.com", "117-117-1117", "participant", 2, 2 ],
#   [ "Bootstrap Bill Turner", "hhh@gmail.com", "119-119-1119", "participant", 2, 2 ],
#   [ "Cotton", "iii@gmail.com", "121-121-1211", "participant", 2, 3 ],
#   [ "Marty", "jjj@gmail.com", "122-122-1221", "participant" ],
#   [ "Mercer", "kkk@gmail.com", "123-123-1231", "participant" ],
#   [ "Scarlett", "lll@gmail.com", "124-124-1241", "crew" ],
#   [ "Leech", "mmm@gmail.com", "125-125-1251", "participant" ],
#   [ "Maccus", "nnn@gmail.com", "126-126-1261", "participant" ],
#   [ "Koleniko", "ooo@gmail.com", "127-127-1271", "participant" ],
#   [ "Shrimper", "qqq@gmail.com", "128-128-1281", "participant" ],
#   [ "Wyvern", "rrr@gmail.com", "129-129-1291", "participant" ],
#   [ "Palafico", "sss@gmail.com", "130-130-1301", "participant" ],
#   [ "Jimmy Legs", "ttt@gmail.com", "131-131-1311", "participant" ],
#   [ "Clacker", "uuu@gmail.com", "132-132-1321", "participant" ],
#   [ "Ogilvey", "vvv@gmail.com", "133-133-1331", "participant" ],
#   [ "Giselle", "xxx@gmail.com", "134-134-1341", "participant" ],
#   [ "Sweepy", "yyy@gmail.com", "135-135-1351", "participant" ],
#   [ "Ho-Kwan", "zzz@gmail.com", "136-136-1361", "participant" ],
#   [ "Lejon", "aaaaa@gmail.com", "137-137-1371", "participant" ],
#   [ "Jack Sparrow", "bbbbb@gmail.com", "138-138-1381", "captain", 0, 1 ],
#   [ "James Norrington", "ccccc@gmail.com", "139-139-1391", "captain", 0, 2 ],
#   [ "Davy Jones", "ddddd@gmail.com", "140-140-1401", "captain", 0, 3 ],
#   [ "Joshamee Gibbs", "eeeee@gmail.com", "141-141-1411", "captain", 0, 4 ],
#   [ "Bellamy", "fffff@gmail.com", "142-142-1421", "captain", 0, 5 ]
# ]

# participant_list.each do |name, email, phone, role, team_id, boat_id|
#   boat = Boat.find(boat_id)
#   team = Team.find(team_id)
#   puts "Adding #{name} from Team #{team.team_name} to Boat #{boat.title} "

#   #  Participant.create( name: name, email: email, phone: phone, role: role, team_id: team_id, boat_id: boat_id )
#   Participant.create!( name: name, email: email, phone: phone, role: role, team: team, boat: boat )
# end


