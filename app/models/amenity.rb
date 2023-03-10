# == Schema Information
#
# Table name: amenities
#
#  id          :integer          not null, primary key
#  coffee      :boolean
#  food        :boolean
#  outlets     :boolean
#  wifi        :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  offering_id :integer
#  spot_id     :integer
#
class Amenity < ApplicationRecord
  belongs_to(:spot, { :required => true, :class_name => "Spot", :foreign_key => "spot_id" })
  belongs_to(:offering, { :required => true, :class_name => "SpotOffering", :foreign_key => "offering_id" })
end
