class Listing < ApplicationRecord
  belongs_to :user
  has_many :dogs, through: :users

  def full_street_address
    "#{suburb}, #{state}"
  end

  geocoded_by :full_street_address
  after_validation :geocode

  acts_as_punchable
end
