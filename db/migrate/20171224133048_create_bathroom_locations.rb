class CreateBathroomLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :bathroom_locations do |t|
      t.integer :bathroom_id
      t.integer :location_id

      t.timestamps
    end
  end
end
