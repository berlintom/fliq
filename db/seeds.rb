require "open-uri"
puts "Destroy Everything"

puts "Creating Users"

vali = User.new(
  first_name: "Vali",
  user_name: "ValiF",
  email: "vali@fliq.de",
  password: "123456",
  phone_number: 111
  )
vali.photo.attach(io: file = URI.open("https://source.unsplash.com/featured/?face"), filename: "profile", content_type: 'image/png')
vali.save!

tom = User.new(
  first_name: "Tom",
  user_name: "TomK",
  email: "tom@fliq.de",
  password: "123456",
  phone_number: 222
  )
tom.photo.attach(io: file = URI.open("https://source.unsplash.com/featured/?face"), filename: "profile", content_type: 'image/png')
tom.save!

teo = User.new(
  first_name: "Teo",
  user_name: "TeoF",
  email: "teo@fliq.de",
  password: "123456",
  phone_number: 333
  )
teo.photo.attach(io: file = URI.open("https://source.unsplash.com/featured/?face"), filename: "profile", content_type: 'image/png')
teo.save!

egor = User.new(
  first_name: "Egor",
  user_name: "EgorD",
  email: "egor@fliq.de",
  password: "123456",
  phone_number: 444
  )
egor.photo.attach(io: file = URI.open("https://source.unsplash.com/featured/?face"), filename: "profile", content_type: 'image/png')
egor.save!

puts "Creating Venues"

venue1 = Venue.new(
  address: "Rathausstraße 5, 10178 Berlin, Deutschland",
  outdoor: false,
  price: 8,
  table_type: "wood",
)
venue1.photos.attach(io: file = URI.open("https://source.unsplash.com/featured/?gym"), filename: "venue", content_type: 'image/png')
venue1.save!

venue2 = Venue.new(
  address: "Kurstraße 48, 10117 Berlin, Deutschland",
  outdoor: true,
  price: 0,
  table_type: "stone",
)
venue2.photos.attach(io: file = URI.open("https://source.unsplash.com/featured/?gym"), filename: "venue", content_type: 'image/png')
venue2.save!

puts "Creating Profiles"

# vprofile = Profile.new(
#   point_sum: 90,
#   venue: venue1,
#   user: vali,
#   equipment: "no equipment"
# )
# vprofile.save!

tprofile = Profile.new(
  point_sum: 130,
  venue: venue2,
  user: teo,
  equipment: "3 equipments"
)
tprofile.save!

toprofile = Profile.new(
  point_sum: 180,
  venue: venue1,
  user: tom,
  equipment: "5 equipments"
)
toprofile.save!

eprofile = Profile.new(
  point_sum: 250,
  venue: venue2,
  user: egor,
  equipment: "1 equipment"
)
eprofile.save!

puts "Creating Matches"

match1 = Match.new(
  capacity: 2,
  user: tom,
  venue: venue1,
  date: Date.today
)
match1.save!



match2 = Match.new(
  capacity: 4,
  user: egor,
  venue: venue2,
  date: Date.today + 2
)
match2.save!

puts "Creating Participations"

participation1 = Participation.new(
  user: vali,
  match: match1,
  status: "pending",
)
participation1.save!

participation2 = Participation.new(
  user: teo,
  match: match2,
  status: "pending",
)
participation2.save!

participation3 = Participation.new(
  user: tom,
  match: match2,
  status: "pending",
)
participation3.save!

participation4 = Participation.new(
  user: tom,
  match: match1,
  status: "accepted",
)
participation4.save!

participation5 = Participation.new(
  user: egor,
  match: match2,
  status: "accepted",
)
participation5.save!

puts "Creating Reviews"

review1 = Review.new(
  comment: "Nice game",
  rating: 5,
  match: match2,
  user: teo,
  venue: match2.venue
)
review1.photo.attach(io: file = URI.open("https://source.unsplash.com/featured/?desk"), filename: "review", content_type: 'image/png')
review1.save!

review2 = Review.new(
  comment: "Bad game",
  rating: 2,
  match: match1,
  user: vali,
  venue: match1.venue
)
review2.photo.attach(io: file = URI.open("https://source.unsplash.com/featured/?desk"), filename: "review", content_type: 'image/png')
review2.save!

puts "Success!"
