class Plant < ActiveRecord::Base
    has_many :plant_parenthoods
    has_many :people, through: :plant_parenthoods
    has_many :plant_categories
    has_many :categories, through: :plant_categories
    has_many :waterings
    has_many :waterers, through: :waterings

    def number_of_days_since_the_last_watering
        today = DateTime.now
        last_watering = self.waterings.last.created_at.to_datetime
        days_ago = (today - last_watering).to_i
        if days_ago > 0
            puts "I was watered #{days_ago} days ago."
        else
            puts "I was watered today"
    end
end
