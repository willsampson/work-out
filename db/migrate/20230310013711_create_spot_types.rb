class CreateSpotTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :spot_types do |t|
      t.integer :category_id
      t.integer :spot_id
      t.boolean :cafe
      t.boolean :library
      t.boolean :hotel
      t.boolean :public_space

      t.timestamps
    end
  end
end
