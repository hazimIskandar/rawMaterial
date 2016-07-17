class CreateMaterials < ActiveRecord::Migration
  def change
    create_table :materials do |t|
      t.string :name
      t.string :unit
      t.integer :minimum_stock
      t.decimal :average_price
      t.integer :current_stock

      t.timestamps null: false
    end
  end
end
