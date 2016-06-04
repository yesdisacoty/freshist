class CreateHarvests < ActiveRecord::Migration
  def change
    create_table :harvests do |t|
      t.string :name
      t.text :description
      t.decimal :price

      t.timestamps null: false
    end
  end
end
