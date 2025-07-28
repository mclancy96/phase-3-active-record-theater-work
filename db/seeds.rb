# Clear existing data
puts "Clearing existing data..."
Audition.destroy_all
Role.destroy_all

# Create roles
puts "Creating roles..."

hamlet = Role.create!(character_name: "Hamlet")
ophelia = Role.create!(character_name: "Ophelia")
macbeth = Role.create!(character_name: "Macbeth")
lady_macbeth = Role.create!(character_name: "Lady Macbeth")
romeo = Role.create!(character_name: "Romeo")
juliet = Role.create!(character_name: "Juliet")

puts "Created #{Role.count} roles"

# Create auditions for Hamlet
puts "Creating auditions for Hamlet..."
Audition.create!(
  actor: "Benedict Cumberbatch",
  location: "Royal Shakespeare Theatre",
  phone: 5551234567,
  hired: true,
  role: hamlet
)

Audition.create!(
  actor: "Oscar Isaac",
  location: "Broadway Theater",
  phone: 5551234568,
  hired: false,
  role: hamlet
)

Audition.create!(
  actor: "Tom Hiddleston",
  location: "West End Theatre",
  phone: 5551234569,
  hired: false,
  role: hamlet
)

Audition.create!(
  actor: "Michael Fassbender",
  location: "Lincoln Center",
  phone: 5551234570,
  hired: false,
  role: hamlet
)

# Create auditions for Ophelia
puts "Creating auditions for Ophelia..."
Audition.create!(
  actor: "Saoirse Ronan",
  location: "Royal Shakespeare Theatre",
  phone: 5552345678,
  hired: true,
  role: ophelia
)

Audition.create!(
  actor: "Anya Taylor-Joy",
  location: "Broadway Theater",
  phone: 5552345679,
  hired: false,
  role: ophelia
)

Audition.create!(
  actor: "Florence Pugh",
  location: "West End Theatre",
  phone: 5552345680,
  hired: false,
  role: ophelia
)

# Create auditions for Macbeth
puts "Creating auditions for Macbeth..."
Audition.create!(
  actor: "Michael Shannon",
  location: "Steppenwolf Theatre",
  phone: 5553456789,
  hired: true,
  role: macbeth
)

Audition.create!(
  actor: "Oscar Isaac",
  location: "Public Theater",
  phone: 5553456790,
  hired: false,
  role: macbeth
)

Audition.create!(
  actor: "Idris Elba",
  location: "National Theatre",
  phone: 5553456791,
  hired: false,
  role: macbeth
)

Audition.create!(
  actor: "Brian Cox",
  location: "Royal Shakespeare Theatre",
  phone: 5553456792,
  hired: false,
  role: macbeth
)

Audition.create!(
  actor: "James McAvoy",
  location: "Trafalgar Studios",
  phone: 5553456793,
  hired: false,
  role: macbeth
)

# Create auditions for Lady Macbeth
puts "Creating auditions for Lady Macbeth..."
Audition.create!(
  actor: "Ruth Negga",
  location: "Steppenwolf Theatre",
  phone: 5554567890,
  hired: true,
  role: lady_macbeth
)

Audition.create!(
  actor: "Cate Blanchett",
  location: "Lincoln Center",
  phone: 5554567891,
  hired: false,
  role: lady_macbeth
)

Audition.create!(
  actor: "Tilda Swinton",
  location: "National Theatre",
  phone: 5554567892,
  hired: false,
  role: lady_macbeth
)

Audition.create!(
  actor: "Michelle Williams",
  location: "Public Theater",
  phone: 5554567893,
  hired: false,
  role: lady_macbeth
)

# Create auditions for Romeo
puts "Creating auditions for Romeo..."
Audition.create!(
  actor: "Timothée Chalamet",
  location: "Globe Theatre",
  phone: 5555678901,
  hired: true,
  role: romeo
)

Audition.create!(
  actor: "Tom Holland",
  location: "Broadway Theater",
  phone: 5555678902,
  hired: false,
  role: romeo
)

Audition.create!(
  actor: "Ansel Elgort",
  location: "Delacorte Theater",
  phone: 5555678903,
  hired: false,
  role: romeo
)

Audition.create!(
  actor: "Dev Patel",
  location: "Royal Court Theatre",
  phone: 5555678904,
  hired: false,
  role: romeo
)

# Create auditions for Juliet
puts "Creating auditions for Juliet..."
Audition.create!(
  actor: "Hailee Steinfeld",
  location: "Globe Theatre",
  phone: 5556789012,
  hired: true,
  role: juliet
)

Audition.create!(
  actor: "Zendaya",
  location: "Public Theater",
  phone: 5556789013,
  hired: false,
  role: juliet
)

Audition.create!(
  actor: "Thomasin McKenzie",
  location: "Broadway Theater",
  phone: 5556789014,
  hired: false,
  role: juliet
)

Audition.create!(
  actor: "Millicent Simmonds",
  location: "Delacorte Theater",
  phone: 5556789015,
  hired: false,
  role: juliet
)

Audition.create!(
  actor: "Elsie Fisher",
  location: "Royal Court Theatre",
  phone: 5556789016,
  hired: false,
  role: juliet
)

puts "Seeding complete!"
puts "Created #{Role.count} roles and #{Audition.count} auditions"

# Display summary
puts "\nSummary:"
Role.all.each do |role|
  hired_count = role.auditions.where(hired: true).count
  total_count = role.auditions.count
  puts "#{role.character_name}: #{total_count} auditions (#{hired_count} hired)"
end
