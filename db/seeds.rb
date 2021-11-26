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

tom = User.new(
  first_name: "Tom",
  user_name: "topspin667",
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
  user_name: "egorlito",
  email: "egor@fliq.de",
  password: "123456",
  phone_number: 444
  )
egor.photo.attach(io: file = URI.open("https://ca.slack-edge.com/T02NE0241-U02F9JKQJEB-28c9a45cef49-512"), filename: "profile", content_type: 'image/png')
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

vprofile = Profile.new(
  point_sum: 90,
  venue: venue1,
  user: vali,
  equipment: "no equipment"
)
  vprofile.save!

tprofile = Profile.new(
  point_sum: 130,
  venue: venue2,
  user: teo,
  equipment: "+2 🏓"
)
tprofile.save!

toprofile = Profile.new(
  point_sum: 180,
  venue: venue1,
  user: tom,
  equipment: "+1 🏓"
)
toprofile.save!

eprofile = Profile.new(
  point_sum: 250,
  venue: venue2,
  user: egor,
  equipment: "+3 🏓"
)
eprofile.save!

puts "Creating Matches"

match1 = Match.new(
  capacity: 2,
  user: tom,
  venue: venue1,
  date: Date.today,
  start_time: Time.new(3),
  end_time: Time.new(5),
  comment: "lets practice! i can bring a 2nd bat",
)
match1.save!


match2 = Match.new(
  capacity: 4,
  user: egor,
  venue: venue2,
  date: Date.today + 2,
  start_time: Time.new(11),
  end_time: Time.new(12),
  comment: "Just a relaxed lunch break round",
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
