class AddCreatureClassToCharacter < ActiveRecord::Migration[6.1]
  def change
    add_column :characters, :creature_class, :integer
  end
end
