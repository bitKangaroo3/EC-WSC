class CreateBaskets < ActiveRecord::Migration[5.2]
  def change
    create_table :baskets do |t|
      t.integer :user_id
      t.integer :basket_product_id

      t.timestamps
		end
		add_index :baskets, :user_id
		add_index :baskets, :basketproduct_id
		add_index :baskets, [:user_id, :basket_product_id], unique: true
  end
end
