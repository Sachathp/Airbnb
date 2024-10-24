require 'faker'

10.times do 
    City.create(city_name: Faker::Address.city)
end

10.times do 
    Dogsitter.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        city: City.all.sample
    )
end

10.times do 
    Dog.create(
        name: Faker::Creature::Dog.name,
        city: City.all.sample
    )
end

20.times do 
    Stroll.create(
        dogsitter: Dogsitter.all.sample,
        dog: Dog.all.sample
    )
end