class Bathroom < ApplicationRecord
  has_many :bathroom_locations
  has_many :locations, through: :bathroom_locations
  has_many :comments
  has_many :users, through: :comments

  def cleanest_bathroom
     Bathroom.all.each do |bathroom|
       clean_bathroom = 0
       if bathroom.cleanliness >= clean_bathroom
         clean_bathroom = bathroom
     end
     clean_bathroom
   end
  end

  def dirtiest_bathroom

  end

end

#How many bathrooms has this user reviewed?
#How many comments has this user made?
#average bathroom cleanliness
#which neighborhood has the most bathrooms
#which neighborhood has the least bathrooms
#cleanest bathroom
#dirtiest bathroom
#bathrooms with a rating higher than 5
