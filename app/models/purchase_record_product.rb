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
	has_many :PurchaseRecords
end
