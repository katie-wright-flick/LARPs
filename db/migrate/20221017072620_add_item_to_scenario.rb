class AddItemToScenario < ActiveRecord::Migration[6.1]
  def change
    add_reference :items, :scenario, foreign_key: true
  end
end
