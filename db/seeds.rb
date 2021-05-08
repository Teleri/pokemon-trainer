# t.string "name"
# t.integer "age"
# t.string "gender"
# t.string "favourite_pokemon"
# t.string "hometown"

10.times do
  Trainer.create(name: "Test Trainer", age: 20, gender: "male", favourite_pokemon: "Test Pokemon", hometown: "Hometown")
end