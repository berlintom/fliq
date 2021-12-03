require "open-uri"
puts "Destroy Everything"

puts "Creating Users"

vali = User.new(
  first_name: "Vali",
  user_name: "validator",
  email: "vali@fliq.de",
  password: "123456",
  phone_number: 111
  )
vali.photo.attach(io: file = URI.open("https://ca.slack-edge.com/T02NE0241-U02FW5W7TRD-a3c876362075-512"), filename: "profile", content_type: 'image/png')
vali.save!

ali = User.new(
  first_name: "Ali",
  user_name: "ali-star",
  email: "ali@fliq.de",
  password: "123456",
  phone_number: 115
  )
ali.photo.attach(io: file = URI.open("https://ca.slack-edge.com/T02NE0241-U02G4887HQE-6103d2b52a0c-512"), filename: "profile", content_type: 'image/png')
ali.save!

andre = User.new(
  first_name: "Andre",
  user_name: "Mr. NoMFU",
  email: "andre@fliq.de",
  password: "123456",
  phone_number: 116
  )
andre.photo.attach(io: file = URI.open("https://ca.slack-edge.com/T02NE0241-ULHT7RUTU-25f6e4344376-512"), filename: "profile", content_type: 'image/png')
andre.save!

pato = User.new(
  first_name: "Pato",
  user_name: "Pato110",
  email: "pato@fliq.de",
  password: "123456",
  phone_number: 117
  )
pato.photo.attach(io: file = URI.open("https://ca.slack-edge.com/T02NE0241-U01BHAWKMDZ-4e8ddd640b7f-512"), filename: "profile", content_type: 'image/png')
pato.save!

max = User.new(
  first_name: "Max",
  user_name: "MagicalMax",
  email: "max@fliq.de",
  password: "123456",
  phone_number: 118
  )
max.photo.attach(io: file = URI.open("https://ca.slack-edge.com/T02NE0241-U016D9Z8EH2-0fa9d5174210-512"), filename: "profile", content_type: 'image/png')
max.save!

claire = User.new(
  first_name: "Claire",
  user_name: "fair_claire",
  email: "claire@fliq.de",
  password: "123456",
  phone_number: 119
  )
claire.photo.attach(io: file = URI.open("https://ca.slack-edge.com/T02NE0241-UF7Q23ULC-4c73eeca13a7-512"), filename: "profile", content_type: 'image/png')
claire.save!

dave = User.new(
  first_name: "David",
  user_name: "d-dynamite",
  email: "dave@fliq.de",
  password: "123456",
  phone_number: 120
  )
dave.photo.attach(io: file = URI.open("https://ca.slack-edge.com/T02NE0241-U01TBQ75U87-8c79dffcb36b-512"), filename: "profile", content_type: 'image/png')
dave.save!

cam = User.new(
  first_name: "Camila",
  user_name: "CSS-mila",
  email: "cam@fliq.de",
  password: "123456",
  phone_number: 121
  )
cam.photo.attach(io: file = URI.open("https://ca.slack-edge.com/T02NE0241-U01C7G2BND9-4f528e2b5bb7-512"), filename: "profile", content_type: 'image/png')
cam.save!

nina = User.new(
  first_name: "Nina",
  user_name: "trick-shot🥃",
  email: "nina@fliq.de",
  password: "123456",
  phone_number: 122
  )
nina.photo.attach(io: file = URI.open("https://ca.slack-edge.com/T02NE0241-U0160CHLQ14-c8e3ee5c6d61-512"), filename: "profile", content_type: 'image/png')
nina.save!

tom = User.new(
  first_name: "Tom",
  user_name: "teekay",
  email: "tom@fliq.de",
  password: "123456",
  phone_number: 222
  )
tom.photo.attach(io: file = URI.open("https://ca.slack-edge.com/T02NE0241-U02G2SZ57LZ-ced9b30f9aac-512"), filename: "profile", content_type: 'image/png')
tom.save!

teo = User.new(
  first_name: "Teo",
  user_name: "turboteo",
  email: "teo@fliq.de",
  password: "123456",
  phone_number: 333
  )
teo.photo.attach(io: file = URI.open("https://ca.slack-edge.com/T02NE0241-U02G44HAY7Q-a48f6e4ce7aa-512"), filename: "profile", content_type: 'image/png')
teo.save!

egor = User.new(
  first_name: "Egor",
  user_name: "Egorlito",
  email: "egor@fliq.de",
  password: "123456",
  phone_number: 444
  )
egor.photo.attach(io: file = URI.open("https://ca.slack-edge.com/T02NE0241-U02F9JKQJEB-28c9a45cef49-512"), filename: "profile", content_type: 'image/png')
egor.save!

puts "Creating Venues"

venue1 = Venue.new(
  address: "Rathausstraße 5, 10178 Berlin",
  outdoor: false,
  price: 8,
  table_type: "Professional"
)
venue1.photos.attach(io: file = URI.open("https://source.unsplash.com/featured/?gym"), filename: "venue", content_type: 'image/png')
venue1.save!

venue2 = Venue.new(
  address: "Kurstraße 48, 10117 Berlin",
  outdoor: true,
  price: 0,
  table_type: "Classic Stone"
)
venue2.photos.attach(io: file = URI.open("https://source.unsplash.com/featured/?gym"), filename: "venue", content_type: 'image/png')
venue2.save!

venue3 = Venue.new(
  address: "Hönower Straße, 12623 Berlin",
  outdoor: true,
  price: 0,
  table_type: "Stone"
)
venue3.photos.attach(io: file = URI.open("https://source.unsplash.com/featured/?gym"), filename: "venue", content_type: 'image/png')
venue3.save!

venue4 = Venue.new(
  address: "Reglinstraße, 12105 Berlin",
  outdoor: true,
  price: 0,
  table_type: "Professional"
)
venue4.photos.attach(io: file = URI.open("https://source.unsplash.com/featured/?gym"), filename: "venue", content_type: 'image/png')
venue4.save!

venue5 = Venue.new(
  address: "Dickhardtstraße 19, 12161 Berlin",
  outdoor: true,
  price: 0,
  table_type: "Classic Stone"
)
venue5.photos.attach(io: file = URI.open("https://source.unsplash.com/featured/?gym"), filename: "venue", content_type: 'image/png')
venue5.save!

venue6 = Venue.new(
  address: "Frobenstraße, 12249 Berlin",
  outdoor: true,
  price: 0,
  table_type: "Classic Stone"
)
venue6.photos.attach(io: file = URI.open("https://source.unsplash.com/featured/?gym"), filename: "venue", content_type: 'image/png')
venue6.save!

venue7 = Venue.new(
  address: "Waitzstraße, 10629 Berlin",
  outdoor: true,
  price: 0,
  table_type: "Classic Stone"
)
venue7.photos.attach(io: file = URI.open("https://source.unsplash.com/featured/?gym"), filename: "venue", content_type: 'image/png')
venue7.save!

venue8 = Venue.new(
  address: "Schützenstraße, 13127 Berlin",
  outdoor: true,
  price: 0,
  table_type: "Classic Stone"
)
venue8.photos.attach(io: file = URI.open("https://source.unsplash.com/featured/?gym"), filename: "venue", content_type: 'image/png')
venue8.save!

venue9 = Venue.new(
  address: "Marzahner Chaussee, 10315 Berlin",
  outdoor: true,
  price: 0,
  table_type: "Classic Stone"
)
venue9.photos.attach(io: file = URI.open("https://source.unsplash.com/featured/?gym"), filename: "venue", content_type: 'image/png')
venue9.save!

venue10 = Venue.new(
  address: "Trusetaler Str. 39, 12687 Berlin",
  outdoor: false,
  price: 10,
  table_type: "Professional"
)
venue10.photos.attach(io: file = URI.open("https://source.unsplash.com/featured/?gym"), filename: "venue", content_type: 'image/png')
venue10.save!

puts "Creating Profiles"

vprofile = Profile.new(
  point_sum: 90,
  venue: venue1,
  user: vali,
  equipment: "no equipment :/"
)
  vprofile.save!

aprofile = Profile.new(
  point_sum: 120,
  venue: venue5,
  user: ali,
  equipment: "No equipment 🏓 but 🍺"
)
  aprofile.save!

andreprofile = Profile.new(
  point_sum: 150,
  venue: venue1,
  user: andre,
  equipment: "providing match playlist"
)
  andreprofile.save!

patoprofile = Profile.new(
  point_sum: 110,
  venue: venue3,
  user: pato,
  equipment: "bringing 🏓 & 🍺"
)
  patoprofile.save!

teoprofile = Profile.new(
  point_sum: 205,
  venue: venue3,
  user: teo,
  equipment: "munich madness"
)
  teoprofile.save!

maxprofile = Profile.new(
  point_sum: 160,
  venue: venue3,
  user: max,
  equipment: "i have 2 extra bats"
)
  maxprofile.save!

cprofile = Profile.new(
  point_sum: 280,
  venue: venue9,
  user: claire,
  equipment: "Pro/ Only ⭐⭐⭐ balls"
)
cprofile.save!

daveprofile = Profile.new(
  point_sum: 170,
  venue: venue8,
  user: dave,
  equipment: "can bring outdoor balls!"
)
daveprofile.save!

camprofile = Profile.new(
  point_sum: 250,
  venue: venue5,
  user: cam,
  equipment: "forget my 🏓 in BCN"
)
camprofile.save!

ninaprofile = Profile.new(
  point_sum: 240,
  venue: venue3,
  user: nina,
  equipment: "my van has no space"
)
camprofile.save!

toprofile = Profile.new(
  point_sum: 210,
  venue: venue1,
  user: tom,
  equipment: "i can bring +1 bat 🏓"
)
toprofile.save!

eprofile = Profile.new(
  point_sum: 220,
  venue: venue2,
  user: egor,
  equipment: "bringing 2 of these: 🏓"
)
eprofile.save!

puts "Creating Matches"

match1 = Match.new(
  capacity: 2,
  user: ali,
  venue: venue1,
  date: Date.today,
  start_time: Time.new(3),
  end_time: Time.new(5),
  comment: "lets FliQ! wax on..wax off"
)
match1.save!

match2 = Match.new(
  capacity: 4,
  user: egor,
  venue: venue2,
  date: Date.today + 2,
  start_time: Time.new(11),
  end_time: Time.new(12),
  comment: "Just a relaxed lunch break match"
)
match2.save!

match3 = Match.new(
  capacity: 2,
  user: cam,
  venue: venue5,
  date: Date.today + 3,
  start_time: Time.new(15),
  end_time: Time.new(16),
  comment: "Let me win!! #css"
)
match3.save!

match4 = Match.new(
  capacity: 2,
  user: pato,
  venue: venue6,
  date: Date.today + 1,
  start_time: Time.new(12),
  end_time: Time.new(13),
  comment: "some topspins & beer"
)
match4.save!

match5 = Match.new(
  capacity: 4,
  user: max,
  venue: venue7,
  date: Date.today + 5,
  start_time: Time.new(12),
  end_time: Time.new(13),
  comment: "open for a 2on2"
)
match5.save!

match6 = Match.new(
  capacity: 2,
  user: claire,
  venue: venue10,
  date: Date.today,
  start_time: Time.new(8),
  end_time: Time.new(11),
  comment: "imma take your points!"
)
match6.save!

match7 = Match.new(
  capacity: 4,
  user: vali,
  venue: venue1,
  date: Date.today + 10,
  start_time: Time.new(9),
  end_time: Time.new(13),
  comment: "forecast looks good 🌞"
)
match7.save!

match8 = Match.new(
  capacity: 2,
  user: dave,
  venue: venue4,
  date: Date.today + 5,
  start_time: Time.new(15),
  end_time: Time.new(17),
  comment: "friendly dude stealing your points"
)
match8.save!

match9 = Match.new(
  capacity: 4,
  user: teo,
  venue: venue4,
  date: Date.today + 5,
  start_time: Time.new(10),
  end_time: Time.new(17),
  comment: "bavarian powerplay"
)
match9.save!

puts "Creating Participations"

participation1 = Participation.new(
  user: ali,
  match: match1,
  status: "accepted"
)
participation1.save!

participation2 = Participation.new(
  user: vali,
  match: match1,
  status: "pending"
)
participation2.save!

participation3 = Participation.new(
  user: egor,
  match: match2,
  status: "accepted"
)
participation3.save!

participation4 = Participation.new(
  user: vali,
  match: match2,
  status: "pending"
)
participation4.save!

participation5 = Participation.new(
  user: cam,
  match: match3,
  status: "accepted"
)
participation5.save!

participation6 = Participation.new(
  user: tom,
  match: match3,
  status: "pending"
)
participation6.save!

participation7 = Participation.new(
  user: pato,
  match: match4,
  status: "accepted"
)
participation7.save!

participation8 = Participation.new(
  user: max,
  match: match4,
  status: "pending"
)
participation8.save!

participation9 = Participation.new(
  user: claire,
  match: match5,
  status: "accepted"
)
participation9.save!

participation10 = Participation.new(
  user: dave,
  match: match5,
  status: "pending"
)
participation10.save!

participation11 = Participation.new(
  user: claire,
  match: match2,
  status: "accepted"
)
participation11.save!

participation12 = Participation.new(
  user: teo,
  match: match2,
  status: "pending"
)
participation12.save!

participation13 = Participation.new(
  user: claire,
  match: match6,
  status: "accepted"
)
participation13.save!

participation14 = Participation.new(
  user: cam,
  match: match6,
  status: "pending"
)
participation14.save!

participation15 = Participation.new(
  user: vali,
  match: match7,
  status: "accepted"
)
participation15.save!

participation16 = Participation.new(
  user: cam,
  match: match7,
  status: "accepted"
)
participation16.save!

participation17 = Participation.new(
  user: dave,
  match: match8,
  status: "accepted"
)
participation17.save!

participation18 = Participation.new(
  user: tom,
  match: match8,
  status: "pending"
)
participation18.save!

participation19 = Participation.new(
  user: teo,
  match: match9,
  status: "accepted"
)
participation19.save!

participation20 = Participation.new(
  user: egor,
  match: match9,
  status: "accepted"
)
participation20.save!

participation21 = Participation.new(
  user: claire,
  match: match9,
  status: "pending"
)
participation21.save!

participation22 = Participation.new(
  user: tom,
  match: match7,
  status: "accepted"
)
participation22.save!

participation23 = Participation.new(
  user: andre,
  match: match7,
  status: "accepted"
)
participation23.save!

# puts "Creating Reviews"

# review1 = Review.new(
#   comment: "Nice game",
#   rating: 5,
#   match: match2,
#   user: teo,
#   venue: match2.venue
# )
# review1.photo.attach(io: file = URI.open("https://source.unsplash.com/featured/?desk"), filename: "review", content_type: 'image/png')
# review1.save!

# review2 = Review.new(
#   comment: "Bad game",
#   rating: 2,
#   match: match1,
#   user: vali,
#   venue: match1.venue
# )
# review2.photo.attach(io: file = URI.open("https://source.unsplash.com/featured/?desk"), filename: "review", content_type: 'image/png')
# review2.save!

puts "Success!"
