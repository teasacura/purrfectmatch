class Cat < ApplicationRecord
  # has_secure_password
  has_many :adopter_cats
  has_many :adopters, through: :adopter_cats
end
