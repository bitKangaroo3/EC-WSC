# == Schema Information
#
# Table name: basket_products
#
#  id         :integer          not null, primary key
#  basket_id  :integer
#  product_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class BasketProduct < ApplicationRecord
	belongs_to :basket
	belongs_to :product
	has_many :Products, dependent: :destroy

	validates :basket_id, :uniqueness => {:scope => :product_id}
end
