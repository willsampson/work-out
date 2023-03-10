# == Schema Information
#
# Table name: spot_offerings
#
#  id         :integer          not null, primary key
#  offering   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class SpotOffering < ApplicationRecord
  has_many(:amenities, { :class_name => "Amenity", :foreign_key => "offering_id", :dependent => :destroy })
  has_many(:spots, { :through => :amenities, :source => :spot })
  
end
