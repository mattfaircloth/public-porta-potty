class Location < ApplicationRecord
  has_many :bathroom_locations
  has_many :bathrooms, through: :bathroom_locations
  accepts_nested_attributes_for :bathrooms
end
