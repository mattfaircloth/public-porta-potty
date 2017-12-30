class User < ApplicationRecord
  has_many :comments
  has_many :bathrooms, through: :comments
  has_secure_password
  validates :username, presence: true, uniqueness: true


  def bathrooms_reviewed
    "Number of Bathrooms Reviewed: #{self.bathrooms.count}"
  end

  def number_of_comments
    "Number of Comments: #{self.comments.count}"
  end

end
