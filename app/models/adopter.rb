class Adopter < ApplicationRecord
  has_many :adopter_cats
  has_many :cats, through: :adopter_cats
end
