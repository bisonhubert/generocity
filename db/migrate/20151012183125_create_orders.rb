class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :item_id
      t.integer :donor_id

      t.timestamps null: false
    end
    add_index :orders, [:item_id, :donor_id], unique: true
  end
end
