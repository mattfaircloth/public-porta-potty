class Location < ApplicationRecord
  has_many :bathroom_locations
  has_many :bathrooms, through: :bathroom_locations


 def bathroom_count
    "Number of Bathrooms: #{self.bathrooms.count}"
 end


 def average_rating
   self.bathrooms.average(:cleanliness)
 end

end
