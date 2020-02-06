class DogSitter < ApplicationRecord
  has_many :dogs, through: :strolls
  belongs_to :city
end
