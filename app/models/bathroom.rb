class Bathroom < ApplicationRecord
  has_many :bathroom_locations
  has_many :locations, through: :bathroom_locations
  has_many :comments
  has_many :users, through: :comments
end
