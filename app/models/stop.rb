class Stop < ApplicationRecord
  belongs_to :day
  belongs_to :route
  belongs_to :station
end
