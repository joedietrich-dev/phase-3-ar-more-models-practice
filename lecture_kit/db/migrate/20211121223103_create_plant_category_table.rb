class CreatePlantCategoryTable < ActiveRecord::Migration[5.2]
  def change
    create_table :plant_categories do |t|
      t.belongs_to :plant
      t.belongs_to :category
    end
  end
end
