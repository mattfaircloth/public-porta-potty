class CreateBathrooms < ActiveRecord::Migration[5.1]
  def change
    create_table :bathrooms do |t|
      t.string :name
      t.integer :cleanliness

      t.timestamps
    end
  end
end
