class CreateScenarios < ActiveRecord::Migration[6.1]
  def change
    create_table :scenarios do |t|
      t.string :name
      t.string :location
      t.boolean :active
      t.integer :players
      t.datetime :starts_at

      t.timestamps
    end
  end
end
