class CreateAmenities < ActiveRecord::Migration[6.0]
  def change
    create_table :amenities do |t|
      t.string :amenity
      t.boolean :wifi
      t.boolean :outlets
      t.boolean :food
      t.boolean :coffee
      t.integer :spot_id
      t.integer :offering_id

      t.timestamps
    end
  end
end
