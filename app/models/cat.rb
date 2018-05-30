class Cat < ApplicationRecord
  has_many :adopter_cats
  has_many :adopters, through: :adopter_cats
  has_secure_password
end
