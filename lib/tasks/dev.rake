desc "Hydrate the database with some sample data to look at so that developing is easier"
task({ :sample_data => :environment}) do

  ss_ids = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30]
  rat = [1, 2, 3, 4]
  three = [1, 2, 3]
  bool = [true, false]

names = ["Will", "Mary", "Sam"]

30.times do |count|
  review = Review.new
  review.spot_id = ss_ids.at(count)
  review.user_id = three.sample
  review.content = "This place was great!"
  review.rating = rat.sample
  review.save
end

30.times do |count|
  amenity = Amenity.new
  amenity.spot_id = ss_ids.at(count)
  amenity.offering_id = rat.sample
  amenity.wifi = bool.sample
  amenity.outlets = bool.sample
  amenity.food = bool.sample
  amenity.coffee = bool.sample
  amenity.save
end

10.times do
  spot = Spot.new
  spot.region_id = 1
  spot.name = "North Study Spot"
  spot.save
end

10.times do
  spot = Spot.new
  spot.region_id = 2
  spot.name = "South Study Spot"
  spot.save
end

10.times do
  spot = Spot.new
  spot.region_id = 3
  spot.name = "Dt Study Spot"
  spot.save
end

10.times do
  spot = Spot.new
  spot.region_id = 4
  spot.name = "West Study Spot"
  spot.save
end

10.times do
  spot = Spot.new
  spot.region_id = 5
  spot.name = "Burbs Study Spot"
  spot.save
end

10.times do
  spot = Spot.new
  spot.region_id = 2
  spot.name = "South Study Spot"
  spot.save
end


 3.times do |count|
    user = User.new
    user.username = names.at(count)
    user.email = "myemail@email.com"
    user.password = "my_password"
    user.save
 end
 
 30.times do |count|
  type = SpotType.new
  type.category_id = rat.sample
  type.spot_id = ss_ids.sample
  type.cafe = bool.sample
  type.library = bool.sample
  type.hotel = bool.sample
  type.public_space = bool.sample
  type.save
end

end
