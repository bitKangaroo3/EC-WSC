class RenameProductsIdColumnToPurchaseRecordProduct < ActiveRecord::Migration[5.2]
	def change
		rename_column :purchase_record_products, :products_id, :product_id
		rename_column :purchase_record_products, :purchase_records_id, :purchase_record_id
		add_index :purchase_records, :user_id
		add_index :purchase_records, :purchase_record_product_id
		add_index :purchase_record_products, :purchase_record_id
		add_index :purchase_record_products, :product_id
	end


end
