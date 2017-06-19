class AddUuidToProducts < ActiveRecord::Migration[5.1]
  def change
  	 add_column :products, :uuid, :string
  end
end
