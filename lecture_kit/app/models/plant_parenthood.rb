class PlantParenthood < ActiveRecord::Base
    belongs_to :person
    belongs_to :plant
    before_save :cap_affection

    private
        def cap_affection
            self.affection = 11000 if self.affection > 11000
        end
    
end