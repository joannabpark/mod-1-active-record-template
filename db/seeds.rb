# create seed data here!
Walk.destroy_all
Dog.destroy_all
DogWalker.destroy_all

10.times do
    Dog.create(
    name: Faker::Creature::Dog.name,
    breed: Faker::Creature::Dog.breed,
    good_dog: true
    )
end

10.times do
    Dog.create(
    name: Faker::Creature::Dog.name,
    breed: Faker::Creature::Dog.breed,
    good_dog: false
    )
end

20.times do
    DogWalker.create(
    name: Faker::Name.first_name,
    favorite_breed: Faker::Creature::Dog.breed
    )
end

20.times do
    Walk.create(
    length_in_minutes: Faker::Number.number(digits: 2),
    dog_id: Dog.ids.sample,
    dog_walker_id: DogWalker.ids.sample
    )
end



puts "Done 🌱"