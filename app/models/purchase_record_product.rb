# == Schema Information
#
# Table name: purchase_record_products
#
#  id                 :integer          not null, primary key
#  product_id         :integer
#  purchase_record_id :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class PurchaseRecordProduct < ApplicationRecord
	belongs_to :product
	belongs_to :purchase_record, optional: true
	has_many :purchase_record_products
	has_many :products

	scope :created_in_this_month, -> {
		where(created_at: Time.current.all_month)
	}
	scope :has_product_id_all, -> (ids) {
		where(product_id: ids)
	}
	scope :sold_in_this_month_all, -> (ids) {
		has_product_id_all(ids).created_in_this_month
	}

	# 現在のuserのidを引数に指定すればadmin_idとして商品を特定してレコードを絞り込む
	scope :sold_in_this_month_admin, -> (current_user_id) {
		sold_in_this_month_all(Product.has_admin_id_all(current_user_id))
	}
	# 月間指定なし
	scope :sold_whole_piriod_admin, -> (current_user_id) {
		has_product_id_all(Product.has_admin_id_all(current_user_id))
	}
end
