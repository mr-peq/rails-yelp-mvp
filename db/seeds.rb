categories = ["chinese", "italian", "japanese", "french", "belgian"]

restaurants = [
  { name: "Surpriz", address: 'Rue Oberkampf', phone_number: '0134847713', category: categories.sample },
  { name: "Chez Jean", address: 'Rue du Poteau', phone_number: '0945009327', category: categories.sample },
  { name: "Chez Do Mac", address: 'Boulevard des Capucines', phone_number: '0146808012', category: categories.sample },
  { name: "O'Bento", address: 'Rue de Clignancourt', phone_number: '0122019770', category: categories.sample },
  { name: "Bouillon Pigalle", address: 'Boulevard de Rochechouart', phone_number: '0146128850', category: categories.sample }
]

puts "Clearing db..."
Restaurant.destroy_all

puts "Creating #{restaurants.length} new restaurants"
restaurants.each do |restaurant|
  Restaurant.create(restaurant)
end

puts "Done."
