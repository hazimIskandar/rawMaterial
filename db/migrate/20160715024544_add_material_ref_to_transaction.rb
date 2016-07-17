class AddMaterialRefToTransaction < ActiveRecord::Migration
  def change
    add_reference :raw_transactions, :material, index: true, foreign_key: true
  end
end
