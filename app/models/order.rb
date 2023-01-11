class Order < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  enum status: ['preparing','out_for_delivery','delivered']
end
