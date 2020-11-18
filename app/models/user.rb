class User < ApplicationRecord
  
  belongs_to :city

  has_many :user_to_sports
  has_many :sports, through: :user_to_sports

  validates :first_name, presence: true, length: { minimum: 2 }
  validates :last_name, presence: true, length: { minimum: 2 }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }


end
