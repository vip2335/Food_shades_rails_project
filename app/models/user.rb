class User < ApplicationRecord
  has_secure_password

  has_many :orders
  has_many :restaurants, through: :orders


  # validates :password, confirmation: true 
  # validates :password_confirmation, presence: true 
end 