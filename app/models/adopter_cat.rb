class AdopterCat < ApplicationRecord
  belongs_to :cat
  belongs_to :adopter
end
