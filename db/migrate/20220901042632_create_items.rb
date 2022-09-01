class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.integer :quantity
      t.boolean :published
      t.string :name
      t.text :description
      t.timestamps
    end
  end
end
