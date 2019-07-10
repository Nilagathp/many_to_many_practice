require_relative '../config/environment.rb'


hannah = Tourist.new("Hannah")
mew = Tourist.new("Mew")
kathy = Tourist.new("Kathy")

tokyo_skytree = Landmark.new("Tokyo Skytree", "Tokyo")
busan_tower = Landmark.new("Busan Tower", "Busan")
wat_emerald = Landmark.new("Temple of the Emerald Buddha", "Bangkok")

puts "Landmarks"
puts Landmark.all.include?(tokyo_skytree)
puts Landmark.all.include?(busan_tower)
puts Landmark.all.include?(wat_emerald)

puts "Find by city"
puts Landmark.find_by_city("Tokyo").include?(tokyo_skytree)
puts Landmark.find_by_city("Busan").include?(busan_tower)
puts Landmark.find_by_city("Bangkok").include?(wat_emerald)

trip1 = Trip.new(hannah, tokyo_skytree)
trip2 = Trip.new(mew, busan_tower)
trip3 = Trip.new(kathy, wat_emerald)

puts "All trips"
puts hannah.trips.include?(trip1)
puts mew.trips.include?(trip2)
puts kathy.trips.include?(trip3)

puts "Tourist landmarks"
puts hannah.landmarks.include?(tokyo_skytree)
puts mew.landmarks.include?(busan_tower)
puts kathy.landmarks.include?(wat_emerald)

puts "Landmark trips"
puts tokyo_skytree.trips.include?(trip1)
puts busan_tower.trips.include?(trip2)
puts wat_emerald.trips.include?(trip3)

puts "Landmark tourists"
puts tokyo_skytree.tourists.include?(hannah)
puts busan_tower.tourists.include?(mew)
puts wat_emerald.tourists.include?(kathy)

binding.pry
0
