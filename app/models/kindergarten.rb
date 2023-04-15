class Kindergarten < ApplicationRecord
  belongs_to :city
  belongs_to :user
  has_one_attached :photo
  has_many :kindergarten_pets
  has_many :pets, through: :kindergarten_pets
end
