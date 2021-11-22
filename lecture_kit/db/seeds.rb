Plant.destroy_all
Plant.reset_pk_sequence
Person.destroy_all
Person.reset_pk_sequence
PlantParenthood.destroy_all
PlantParenthood.reset_pk_sequence
Category.destroy_all
Category.reset_pk_sequence
PlantCategory.destroy_all
PlantCategory.reset_pk_sequence
Watering.destroy_all
Watering.reset_pk_sequence

categories_arr = ["indoor", "outdoor", "leafy", "succulent"]
categories_arr.each{|cat_name| Category.create(name: cat_name)}

basil = Plant.create(species: "basil the herb", bought: "20200610", color: "green", fussy: true, categories: [Category.first, Category.second, Category.third])
corn_tree = Plant.create(species: "Corn Tree", bought: "20170203", color: "green", fussy: false, categories: [Category.second, Category.third])
prayer_plant = Plant.create(species: "Prayer plant", bought: "20190815", color: "purple", fussy: false, categories: [Category.second, Category.fourth])
cactus_1 = Plant.create(species: "Cactus", bought: "20200110", color: "ugly green", fussy: false, categories: [Category.second])
elephant_bush = Plant.create(species: "Elephant bush", bought: "20180908", color: "green", fussy: true, categories: [Category.first])
photos = Plant.create(species: "Photos", bought: "20170910", color: "green", fussy: false, categories: [Category.second])
dragon_tree = Plant.create(species: "Dragon tree", bought: "20170910", color: "green", fussy: false, categories: [Category.second])
snake_plant = Plant.create(species: "Snake plant", bought: "20170910", color: "dark green", fussy: false, categories: [Category.second])
polka_dot_plant = Plant.create(species: "polka dot plant", bought: "20170915", color: "pink and green", fussy: false, categories: [Category.first])
cactus_2 = Plant.create(species: "Cactus", bought: "20200517", color: "green", fussy: false, categories: [Category.first])

# binding.pry

joel = Person.create(name: "Joel", responsible: false, age: 10_000)
sylwia = Person.create(name: "Sylwia", responsible: true, age: 31)

PlantParenthood.create(plant_id: prayer_plant.id, person_id: joel.id, affection:0)
PlantParenthood.create(plant_id: basil.id, person_id: joel.id, affection:1)
PlantParenthood.create(plant_id: basil.id, person_id: sylwia.id, affection:10)
PlantParenthood.create(plant_id: corn_tree.id, person_id: sylwia.id, affection:10)

Watering.create(waterer: joel, wateree: basil)
Watering.create(waterer: joel, wateree: corn_tree)
Watering.create(waterer: joel, wateree: cactus_2)
Watering.create(waterer: sylwia, wateree: basil)
Watering.create(waterer: sylwia, wateree: prayer_plant)
Watering.create(waterer: sylwia, wateree: cactus_1)
Watering.create(waterer: sylwia, wateree: basil)
Watering.create(waterer: sylwia, wateree: elephant_bush)
Watering.create(waterer: sylwia, wateree: photos)
Watering.create(waterer: sylwia, wateree: dragon_tree)
Watering.create(waterer: joel, wateree: snake_plant)
Watering.create(waterer: joel, wateree: polka_dot_plant)
Watering.create(waterer: joel, wateree: corn_tree)


puts " 🌱 🌱 🌱 🌱  SEEDED 🌱 🌱 🌱 🌱 "