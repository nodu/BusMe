class Route < ActiveRecord::Base
  belongs_to :bus
  has_many :stops
end
