class AddCharacterToScenario < ActiveRecord::Migration[6.1]
  def change
    add_reference :characters, :scenario, foreign_key: true
  end
end
