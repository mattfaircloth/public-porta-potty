class Bathroom < ApplicationRecord
  has_many :bathroom_locations
  has_many :locations, through: :bathroom_locations
  has_many :comments
  has_many :users, through: :comments
end

#Which user has the Most bathrooms
#Which user has the Most comments
#average bathroom cleanliness
#which neighborhood has the most bathrooms
#which neighborhood has the least bathrooms
#cleanest bathroom
#dirtiest bathroom
