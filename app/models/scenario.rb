class Scenario < ApplicationRecord
  validates_presence_of :name, :location
  validates :players, numericality: { greater_than: 4 }
end