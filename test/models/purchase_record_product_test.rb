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

require 'test_helper'

class PurchaseRecordProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
