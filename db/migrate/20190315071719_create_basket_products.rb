class CreateBasketProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :basket_products do |t|
      t.integer :basket_id
      t.integer :product_id

      t.timestamps
		end
		add_index :basket_products, :basket_id
		add_index :basket_products, :product_id
		add_index :basket_products, [:basket_id, :product_id], unique: true
  end
end
