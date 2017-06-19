class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    drop_table :products
    create_table :products do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.integer :stock_quantity
      t.timestamps
    end
  end
end
