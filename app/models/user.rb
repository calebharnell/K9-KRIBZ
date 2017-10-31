class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :listings
  has_many :dogs

  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/

  def full_street_address
    "#{suburb}, #{state}"
  end
  
  geocoded_by :full_street_address   # can also be an IP address
  after_validation :geocode

  ratyrate_rateable "user_rating"
  ratyrate_rater
end
