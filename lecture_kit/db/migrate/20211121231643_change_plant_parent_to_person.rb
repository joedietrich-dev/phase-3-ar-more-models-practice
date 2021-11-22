class ChangePlantParentToPerson < ActiveRecord::Migration[5.2]
  def change
    rename_table :plant_parents, :people
    rename_column :plant_parenthoods, :plant_parent_id, :person_id
  end
end
