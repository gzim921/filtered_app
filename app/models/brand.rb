class Brand < ApplicationRecord
  has_many :coffeees
  validates :name, presence: true
end
