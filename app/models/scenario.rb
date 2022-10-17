class Scenario < ApplicationRecord
  validates_presence_of :name, :location
  validates :players, numericality: { greater_than: 4 }
  has_many :characters
  has_many :items
  accepts_nested_attributes_for :characters, :items
end