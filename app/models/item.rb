class Item < ApplicationRecord
  validates_presence_of :name, :description
  validates :quantity, numericality: { greater_than: 1 }
end