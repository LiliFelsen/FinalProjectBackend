# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'David', email: 'david@david.com', password: '12345')
User.create(username: 'Lili', email: 'lili@lili.com', password: '12345')

Restaurant.create(placeId: 'ChIJM_DHP4dZwokRyGVj-sLGues', lat: 40.71792840000001, lng: -73.9901252,
name: 'Casa Mezcal', address: '86 Orchard St, New York, NY 10002, USA', phone_number: '(212) 777-2661',
hours_monday: "Monday: 12:00 – 10:30 PM", hours_tuesday: "Tuesday: 12:00 – 10:30 PM", hours_wednesday: "Wednesday: 12:00 – 11:00 PM",
hours_thursday: "Thursday: 12:00 – 11:00 PM", hours_friday: "Friday: 12:00 PM – 12:00 AM", hours_saturday: "Saturday: 12:00 PM – 12:00 AM",
hours_sunday: "Sunday: 12:00 – 10:30 PM")

Restaurant.create(placeId: 'ChIJhUtcnVBYwokRkHJaZZsDHFk', lat: 40.7662139, lng: -73.9909968,
name: 'Taboon', address: '773 10th Ave, New York, NY 10019, USA', phone_number: '(212) 713-0271', website: 'http://www.taboononline.com/',
hours_monday: "Monday: 5:00 – 11:00 PM", hours_tuesday: "Tuesday: 5:00 – 11:00 PM", hours_wednesday: "Wednesday: 5:00 – 11:00 PM",
hours_thursday: "Thursday: 5:00 – 11:00 PM", hours_friday: "Friday: 5:00 – 11:00 PM", hours_saturday: "Saturday: 5:00 – 11:30 PM",
hours_sunday: "Sunday: 11:00 AM – 3:30 PM, 5:00 – 10:00 PM")

Restaurant.create(placeId: 'ChIJ35dPk4pYwokRbcEIZeGqtvg', lat: 40.776256, lng: -73.981569,
name: 'Noi Due', address: '143 W 69th St, New York, NY 10023, USA', phone_number: '(212) 712-2222', website: 'http://www.noiduecafe.com/',
hours_monday: "Monday: 11:00 AM – 11:00 PM", hours_tuesday: "Tuesday: 11:00 AM – 11:00 PM", hours_wednesday: "Wednesday: 11:00 AM – 11:00 PM",
hours_thursday: "Thursday: 11:00 AM – 11:00 PM", hours_friday: "Friday: Closed", hours_saturday: "Saturday: 7:30 AM – 12:00 AM",
hours_sunday: "Sunday: 11:00 AM – 10:30 PM")

Restaurant.create(placeId: 'ChIJGarru4FZwokRhCrFKKyvH5s', lat: 40.7191277, lng: -73.9849179,
name: 'Cibao', address: '72 Clinton St # 1, New York, NY 10002, USA', phone_number: '(212) 228-0703', website: 'http://cibaorestaurant.com/',
hours_monday: "Monday: 7:00 AM – 2:30 AM", hours_tuesday: "Tuesday: 7:00 AM – 2:30 AM", hours_wednesday: "Wednesday: 7:00 AM – 2:30 AM",
hours_thursday: "Thursday: 7:00 AM – 2:30 AM", hours_friday: "Friday: 7:00 AM – 4:00 AM", hours_saturday: "Saturday: 7:00 AM – 4:00 AM",
hours_sunday: "Sunday: 7:00 AM – 12:00 AM")

Restaurant.all.map {|rest| UserRestaurant.create(user: User.first, restaurant: rest) }

Tag.create(name: 'italian')
Tag.create(name: 'exotic')
Tag.create(name: 'mediterranean')
Tag.create(name: 'mexican')

RestaurantTag.create(tag_id: 4, restaurant_id: 1)
RestaurantTag.create(tag_id: 1 , restaurant_id: 3)
RestaurantTag.create(tag_id: 2 , restaurant_id: 4)
RestaurantTag.create(tag_id: 3 , restaurant_id: 2)

Friendship.create(user: User.first, friend: User.last)

Review.create(user: User.first, restaurant: Restaurant.first, rating: 5, notes: 'Very Good')
