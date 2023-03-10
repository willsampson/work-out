class CreateSpotOfferings < ActiveRecord::Migration[6.0]
  def change
    create_table :spot_offerings do |t|
      t.string :offering

      t.timestamps
    end
  end
end
