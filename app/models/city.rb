class City < ApplicationRecord
  validates :name, presence: true, length: { minimum: 2 }
  has_many :users
end
