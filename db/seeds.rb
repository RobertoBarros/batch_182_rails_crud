10.times do
  r = Restaurant.new
  r.name = Faker::BackToTheFuture.character
  r.address = Faker::Cannabis.cannabinoid
  r.stars = rand(0..10)
  r.save
end