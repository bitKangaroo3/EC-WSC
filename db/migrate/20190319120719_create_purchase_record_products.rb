class CreatePurchaseRecordProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :purchase_record_products do |t|
      t.integer :products_id
      t.integer :purchase_records_id

      t.timestamps
    end
  end
end
