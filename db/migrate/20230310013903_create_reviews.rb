class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :spot_id
      t.integer :user_id
      t.string :content
      t.integer :rating
      t.string :image

      t.timestamps
    end
  end
end
