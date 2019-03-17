# == Schema Information
#
# Table name: baskets
#
#  id                :integer          not null, primary key
#  user_id           :integer
#  basket_product_id :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Basket < ApplicationRecord
	belongs_to :user
	has_many :BasketProducts, dependent: :destroy
	has_many :Products, through: :BasketProducts
end