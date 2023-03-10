class RemoveAmenityFromAmenities < ActiveRecord::Migration[6.0]
  def change
    remove_column :amenities, :amenity
  end
end
