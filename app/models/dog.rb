class Dog < ApplicationRecord
  has_many :dog_sitters, through: :strolls
  belongs_to :city
end
