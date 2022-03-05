class Route < ApplicationRecord
  belongs_to :vehicle
  belongs_to :station
  has_many :stops
end
