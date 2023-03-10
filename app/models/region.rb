# == Schema Information
#
# Table name: regions
#
#  id         :integer          not null, primary key
#  region     :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Region < ApplicationRecord
  has_many(:spots, { :class_name => "Spot", :foreign_key => "region_id", :dependent => :destroy })
end
