class Listing < ApplicationRecord
  belongs_to :user
  has_many :dogs, through: :users
end
