class Sport < ApplicationRecord
  has_many :user_to_sports
  has_many :users, through: :user_to_sports

  validates :name, presence: true, length: { minimum: 4 }
end
