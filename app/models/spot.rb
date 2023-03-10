# == Schema Information
#
# Table name: spots
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  region_id  :integer
#
class Spot < ApplicationRecord

  has_many(:spot_types, { :class_name => "SpotType", :foreign_key => "spot_id", :dependent => :destroy })
  has_many(:amenities, { :class_name => "Amenity", :foreign_key => "spot_id", :dependent => :destroy })
  has_many(:bookmarks, { :class_name => "Bookmark", :foreign_key => "spot_id", :dependent => :destroy })
  has_many(:reviews, { :class_name => "Review", :foreign_key => "spot_id", :dependent => :destroy })
  belongs_to(:region, { :required => true, :class_name => "Region", :foreign_key => "region_id" })
  has_many(:categories, { :through => :spot_types, :source => :category })
  has_many(:offerings, { :through => :amenities, :source => :offering })
end
