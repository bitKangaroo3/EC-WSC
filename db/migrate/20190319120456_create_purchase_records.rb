class CreatePurchaseRecords < ActiveRecord::Migration[5.2]
  def change
    create_table :purchase_records do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end
