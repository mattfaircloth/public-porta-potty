class Location < ApplicationRecord
  has_many :bathroom_locations
  has_many :bathrooms, through: :bathroom_locations
  accepts_nested_attributes_for :bathrooms


 def bathroom_count
    "Number of Bathrooms: #{self.bathrooms.count}"
 end

 def location_with_most_bathrooms
   self.bathrooms.each do |bathroom|
      count = 0

   end
 end

 def average_rating
   self.bathrooms.average(:cleanliness)
 end

end
