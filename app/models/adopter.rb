class Adopter < ApplicationRecord
  has_secure_password
  has_many :adopter_cats
  has_many :cats, through: :adopter_cats
  has_secure_password
end
