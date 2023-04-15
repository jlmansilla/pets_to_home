class Pet < ApplicationRecord
  has_many :kindergarten_pets
  has_many :kindergartens, through: :kindergarten_pets
end
