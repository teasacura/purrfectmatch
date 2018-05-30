class Cats < ApplicationRecord
  has_many :adopter_cats
  has_many :adopters, through: :adopter_cats
end
