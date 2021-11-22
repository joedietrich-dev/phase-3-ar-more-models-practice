class CreateWateringsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :waterings do |t|
      t.belongs_to :person
      t.belongs_to :plant
      t.timestamps
    end
  end
end
