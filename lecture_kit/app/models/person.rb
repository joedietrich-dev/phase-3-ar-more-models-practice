class Person < ActiveRecord::Base
    has_many :plant_parenthoods
    has_many :plants, through: :plant_parenthoods
    has_many :waterings
    has_many :waterees, through: :waterings

    def water_plant(plant)
        Watering.create(waterer: self, wateree: plant)
        plant_parenthood = self.plant_parenthoods.find_by(plant: plant)
        if plant_parenthood
            affection = plant_parenthood.affection || 0
            affection += 1
            plant_parenthood.update(affection: affection)
        end
    end
end