class Bathroom < ApplicationRecord
  has_many :bathroom_locations
  has_many :locations, through: :bathroom_locations
  has_many :comments
  has_many :users, through: :comments
  accepts_nested_attributes_for :locations


  def cleanest_bathroom
      hash = {}
      Bathroom.all.map do |bathroom|
         hash[bathroom.name] = bathroom.cleanliness
      end
      a=hash.sort_by {|_key, value| value}.last
      "#{a[0]} with a rating of #{a[1]}!"
  end

  def dirtiest_bathroom
    hash = {}
    Bathroom.all.map do |bathroom|
       hash[bathroom.name] = bathroom.cleanliness
    end
    a=hash.sort_by {|_key, value| value}.first
    "#{a[0]} with a rating of #{a[1]}!"
  end
end
