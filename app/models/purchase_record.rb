# == Schema Information
#
# Table name: purchase_records
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PurchaseRecord < ApplicationRecord
	has_many :PurchaseRecordProducts
	belongs_to :user
	has_many :Products, through: :purchase_record_products
end
