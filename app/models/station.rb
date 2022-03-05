class Station < ApplicationRecord
  has_many :routes
  has_many :stops
end
